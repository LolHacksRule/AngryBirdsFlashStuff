package §,M§
{
   public class §+f§ implements §%!l§
   {
       
      
      private var §?!D§:Vector.<§0V§>;
      
      private var §9#§:§%!l§;
      
      public function §+f§(param1:§%!l§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            while(true)
            {
               this.§9#§ = param1;
               while(_loc2_)
               {
                  this.§?!D§ = new Vector.<§0V§>();
                  if(_loc2_ || _loc2_)
                  {
                     return;
                     addr47:
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public function set §6V§(param1:§%!l§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9#§ = param1;
         }
      }
      
      public function get §6V§() : §%!l§
      {
         return this.§9#§;
      }
      
      public function addLocalizationTarget(param1:§0V§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?!D§.push(param1);
         }
      }
      
      public function removeLocalizationTarget(param1:§0V§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§?!D§.indexOf(param1) != -1)
            {
               if(_loc3_ || this)
               {
                  this.§?!D§.splice(this.§?!D§.indexOf(param1),1);
               }
            }
         }
      }
      
      public function setLanguage(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§0V§ = null;
         if(!(_loc5_ && param1))
         {
            this.§9#§.setLanguage(param1);
         }
         var _loc3_:int = 0;
         for each(_loc2_ in this.§?!D§)
         {
            if(!(_loc5_ && _loc3_))
            {
               _loc2_.updateLocalization();
            }
         }
      }
      
      public function §[m§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push("<b>" + this.getLocalizedString(param1));
         if(!_loc3_)
         {
            return §§pop() + "</b>";
         }
      }
      
      public function getLocalizedString(param1:String) : String
      {
         return this.§9#§.getLocalizedString(param1);
      }
   }
}
