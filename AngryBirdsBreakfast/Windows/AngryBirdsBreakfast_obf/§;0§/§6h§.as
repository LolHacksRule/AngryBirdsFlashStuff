package §;0§
{
   public class §6h§ implements §,g§
   {
       
      
      private var §<!D§:Vector.<§ !s§>;
      
      private var §#!M§:§,g§;
      
      public function §6h§(param1:§,g§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super();
            while(true)
            {
               this.§#!M§ = param1;
               while(!_loc3_)
               {
                  this.§<!D§ = new Vector.<§ !s§>();
                  if(!(_loc3_ && this))
                  {
                     return;
                     addr52:
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function set §=!R§(param1:§,g§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§#!M§ = param1;
         }
      }
      
      public function get §=!R§() : §,g§
      {
         return this.§#!M§;
      }
      
      public function addLocalizationTarget(param1:§ !s§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<!D§.push(param1);
         }
      }
      
      public function removeLocalizationTarget(param1:§ !s§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§<!D§.indexOf(param1) != -1)
            {
               if(_loc3_)
               {
                  this.§<!D§.splice(this.§<!D§.indexOf(param1),1);
               }
            }
         }
      }
      
      public function setLanguage(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§ !s§ = null;
         if(_loc5_ || param1)
         {
            this.§#!M§.setLanguage(param1);
         }
         for each(_loc2_ in this.§<!D§)
         {
            if(!(_loc6_ && _loc2_))
            {
               _loc2_.updateLocalization();
            }
         }
      }
      
      public function §^W§(param1:String) : String
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
         return this.§#!M§.getLocalizedString(param1);
      }
   }
}
