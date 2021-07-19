package §3C§
{
   import § !Y§.§&$§;
   import §0N§.§0!g§;
   import §5X§.§+!#§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   
   public class §,J§ extends §9!;§
   {
      
      private static var §8d§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §,J§))
         {
            §8d§ = §1+§;
         }
      }
      
      public function §,J§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §>"2§ = true;
            do
            {
               §1"$§ = true;
               do
               {
                  super(§1#§.§1K§,§8"6§.§ K§,§0!g§.§[!y§(§8d§));
               }
               while(_loc1_);
               
            }
            while(_loc1_);
            
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            do
            {
               this.updateTextFields();
            }
            while(!_loc2_);
            
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("CLOSE" === _loc4_)
            {
               addr47:
               §§push(0);
               if(_loc6_ && param1)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  close();
                  if(_loc5_ || param1)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr47);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.hide(param1,param2);
         }
      }
      
      override public function updateTextFields() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §&$§.§[!1§.updateTextFields(§[S§,"VerificationEmailSent_Popup");
         }
      }
   }
}
