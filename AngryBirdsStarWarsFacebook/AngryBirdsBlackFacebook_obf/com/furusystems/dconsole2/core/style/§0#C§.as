package com.furusystems.dconsole2.core.style
{
   public class §0#C§
   {
      
      public static var §@@§:Number = 0.9;
      
      public static var §&r§:Number = 0.9;
      
      public static var §%!n§:Number = 0.9;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §@@§ = 0.9;
         }
         while(true)
         {
            §&r§ = 0.9;
            while(_loc2_)
            {
               §%!n§ = 0.9;
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §0#C§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function update(param1:§7"h§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §@@§ = Number(String(param1.theme.data.core.alpha));
            while(true)
            {
               §&r§ = Number(String(param1.theme.data.inspector.alpha));
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     §%!n§ = Number(String(param1.theme.data.inspector.treeview.alpha));
                     if(!(_loc3_ && _loc3_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
   }
}
