package §^c§
{
   import §&=§.§0!>§;
   import §&=§.Items;
   import §8!P§.§@!=§;
   
   public class §+-§
   {
      
      public static var § !T§:String = "Tue 04/26";
      
      private static var §#u§:§@!=§ = null;
      
      private static var §@;§:Items = null;
      
      private static var §%!A§:§0!>§ = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            § !T§ = "Tue 04/26";
         }
         loop0:
         while(true)
         {
            §#u§ = null;
            do
            {
               §@;§ = null;
               continue loop0;
            }
            while(_loc2_ && §+-§);
            
            return;
         }
      }
      
      public function §+-§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function get §5!0§() : §@!=§
      {
         return §#u§;
      }
      
      public static function set §5!0§(param1:§@!=§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §#u§ = param1;
         }
      }
      
      public static function §?!9§() : Items
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(§@;§);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     addr41:
                     §@;§ = new Items();
                  }
               }
               return §@;§;
            }
         }
         §§goto(addr41);
      }
      
      public static function §3!§() : §0!>§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§%!A§);
            if(!(_loc2_ && §+-§))
            {
               if(§§pop() == null)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §%!A§ = new §0!>§();
                     addr54:
                     §§push(§%!A§);
                  }
               }
               §§goto(addr54);
            }
            return §§pop();
         }
         §§goto(addr54);
      }
   }
}
