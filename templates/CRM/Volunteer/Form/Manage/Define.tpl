

<script type="text/template" id="crm-vol-define-layout-tpl">
  <h2>{ts}Manage Volunteer Needs{/ts}</h2>
  <form><table id="crm-vol-define-needs-dialog">
    <thead><tr>
      <th>{ts}Needed{/ts}</th><th>{ts}Filled{/ts}</th><th>{ts}Role{/ts}</th><th>{ts}Start Time{/ts}</th><th>{ts}Scheduled Duration{/ts}</th><th>{ts}Visibility{/ts}</th><th>&nbsp;</th>
    </tr></thead>
     <tbody id="crm-vol-define-needs-region"></tbody>
  </table>
  <a class="button" id="addNewNeed" href="#"><span><div class="icon add-icon"></div>Add a Need</span></a>
  </form>
</script>

<script type="text/template" id="crm-vol-define-new-need-tpl">
    <td><input type="text" name="num_needed" value="<%= num_needed %>" size="4"></td>
    <td><input type="text" name="filled" value="<%= filled %>" size="4" disabled></td>
    <td>
      {literal}
        <%= RenderUtil.select({
                id: 'crm-vol-role-select',
                name: 'role_id',
                options: _.extend(pseudoConstant.volunteer_role, {0:''}),
                selected: role_id
        }) %>
      {/literal}</td>
    <td>
      <input type="text" name="display_start_date" value="<%= display_start_date %>" size="20">
      <input type="text" name="display_start_time" value="<%= display_start_time %>" size="10">
    </td>
    <td><input type="text" name="duration" value="<%= duration %>" size="6"></td>
    <td><input type="text" name="visibility" value="<%= visibility %>" size="4"></td>
    <td><%= links %></td>
  </script>
