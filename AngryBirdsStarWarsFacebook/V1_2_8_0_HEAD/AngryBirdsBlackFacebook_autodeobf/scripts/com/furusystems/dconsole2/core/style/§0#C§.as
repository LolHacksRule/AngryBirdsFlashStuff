package com.furusystems.dconsole2.core.style
{
   public class §0#C§
   {
      
      public static var §@@§:Number = 0.9;
      
      public static var §&r§:Number = 0.9;
      
      public static var §%!n§:Number = 0.9;
       
      
      public function §0#C§()
      {
         super();
      }
      
      public static function update(param1:§7"h§) : void
      {
         §@@§ = Number(String(param1.theme.data.core.alpha));
         §&r§ = Number(String(param1.theme.data.inspector.alpha));
         §%!n§ = Number(String(param1.theme.data.inspector.treeview.alpha));
      }
   }
}
