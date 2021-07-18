package §>@§
{
   public class §5"H§ implements §%!-§
   {
       
      
      private var §-!U§:Vector.<§#y§>;
      
      private var §3#!§:§%!-§;
      
      public function §5"H§(param1:§%!-§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super();
            while(true)
            {
               this.§3#!§ = param1;
               while(_loc3_ || _loc2_)
               {
                  this.§-!U§ = new Vector.<§#y§>();
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  return;
                  addr53:
               }
            }
         }
         §§goto(addr53);
      }
      
      public function set localizationMapping(param1:§%!-§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§3#!§ = param1;
         }
      }
      
      public function get localizationMapping() : §%!-§
      {
         return this.§3#!§;
      }
      
      public function addLocalizationTarget(param1:§#y§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§-!U§.push(param1);
         }
      }
      
      public function removeLocalizationTarget(param1:§#y§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§-!U§.indexOf(param1) != -1)
            {
               if(!(_loc2_ && param1))
               {
                  this.§-!U§.splice(this.§-!U§.indexOf(param1),1);
               }
            }
         }
      }
      
      public function §6W§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§#y§ = null;
         if(_loc5_)
         {
            this.§3#!§.§6W§(param1);
         }
         for each(_loc2_ in this.§-!U§)
         {
            if(!(_loc6_ && this))
            {
               _loc2_.§9!J§();
            }
         }
      }
      
      public function §@"n§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push("<b>" + this.getLocalizedString(param1));
         if(!_loc2_)
         {
            return §§pop() + "</b>";
         }
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§3#!§.getLocalizedString(param1);
      }
   }
}
