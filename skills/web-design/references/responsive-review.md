# Responsive Review

Use this when checking browser behavior for web UI changes.

## Minimum Pass

- Check one desktop viewport and one mobile viewport.
- Verify navigation, primary action, important content, and repeated components.
- Confirm text does not overflow, overlap, or become unreadable.
- Confirm fixed-format UI elements have stable dimensions.
- Check hover/focus/active states where interaction matters.
- For forms, check labels, validation, keyboard focus, and disabled/loading states.

## Visual Evidence

Use screenshots or browser inspection when automated tests cannot see layout quality. Report:

- viewport size,
- route or state,
- what was verified,
- any remaining visual risk.

## Common Issues

- Tables or cards collapse into unreadable stacks.
- Hero sections hide the next section on common viewports.
- Sticky headers or overlays cover content.
- Long labels break buttons or filters.
- Canvas/WebGL or media content renders blank or incorrectly framed.
