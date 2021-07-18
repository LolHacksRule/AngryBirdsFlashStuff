package §%!r§
{
   public class §3!'§ implements §%",§
   {
       
      
      private var §82§:Vector.<§1`§>;
      
      private var §,!A§:§%",§;
      
      public function §3!'§(param1:§%",§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§,!A§ = param1;
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     this.§82§ = new Vector.<§1`§>();
                     if(_loc3_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr65);
      }
      
      public function set §&!R§(param1:§%",§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,!A§ = param1;
         }
      }
      
      public function get §&!R§() : §%",§
      {
         return this.§,!A§;
      }
      
      public function addLocalizationTarget(param1:§1`§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§82§.push(param1);
         }
      }
      
      public function removeLocalizationTarget(param1:§1`§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§82§.indexOf(param1) != -1)
            {
               if(!(_loc2_ && _loc3_))
               {
                  this.§82§.splice(this.§82§.indexOf(param1),1);
               }
            }
         }
      }
      
      public function setLanguage(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§1`§ = null;
         if(_loc5_)
         {
            this.§,!A§.setLanguage(param1);
         }
         for each(_loc2_ in this.§82§)
         {
            if(_loc5_ || _loc2_)
            {
               _loc2_.updateLocalization();
            }
         }
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§,!A§.getLocalizedString(param1);
      }
   }
}
