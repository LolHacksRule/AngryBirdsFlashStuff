package §4;§
{
   import §8!6§.§-!6§;
   import §8!6§.Items;
   import §[N§.§<!b§;
   
   public class §5n§
   {
      
      public static var §^9§:String = "Tue 04/26";
      
      private static var §+1§:§<!b§ = null;
      
      private static var §=!c§:Items = null;
      
      private static var §?!r§:§-!6§ = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §^9§ = "Tue 04/26";
            while(true)
            {
               §+1§ = null;
               loop2:
               while(_loc2_ || _loc1_)
               {
                  §?!r§ = null;
                  if(_loc2_)
                  {
                     addr50:
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           §=!c§ = null;
                           continue loop2;
                           §§goto(addr50);
                        }
                        addr69:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §5n§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function get §%!_§() : §<!b§
      {
         return §+1§;
      }
      
      public static function set §%!_§(param1:§<!b§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §+1§ = param1;
         }
      }
      
      public static function §0?§() : Items
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§=!c§);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     §=!c§ = new Items();
                     addr30:
                     §§push(§=!c§);
                  }
               }
               §§goto(addr30);
            }
            return §§pop();
         }
         §§goto(addr30);
      }
      
      public static function §+3§() : §-!6§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§?!r§);
            if(!(_loc2_ && §5n§))
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     addr45:
                     §?!r§ = new §-!6§();
                  }
               }
               return §?!r§;
            }
         }
         §§goto(addr45);
      }
   }
}
