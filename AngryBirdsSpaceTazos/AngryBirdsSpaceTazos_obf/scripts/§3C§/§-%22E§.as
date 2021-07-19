package §3C§
{
   import § !Y§.§&$§;
   import §0N§.§0!g§;
   import §4"§.PopupClosedEvent;
   import §5X§.§+!#§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import flash.display.MovieClip;
   
   public class §-"E§ extends §9!;§
   {
      
      private static var §=!'§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §-"E§)
         {
            §=!'§ = §+3§;
         }
      }
      
      private var §%!#§:MovieClip;
      
      private var §"_§:§5!9§;
      
      public function §-"E§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §>"2§ = true;
            while(true)
            {
               §1"$§ = true;
               while(!_loc1_)
               {
                  super(§1#§.§,!"§,§8"6§.§ K§,§0!g§.§[!y§(§=!'§));
                  if(!(_loc1_ && this))
                  {
                     return;
                     addr51:
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            do
            {
               this.updateTextFields();
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private function §2G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§%!#§ = §[S§.getItemByName("MovieClip_DiscSun").mClip;
            loop0:
            while(this.§%!#§)
            {
               if(_loc2_)
               {
                  this.§"_§ = §!D§.§[!1§.§1"<§(this.§%!#§,{"rotation":360},{"rotation":0},5);
               }
               loop1:
               for(; !(_loc1_ && this); while(true)
               {
                  if(_loc2_ || _loc2_)
                  {
                     continue;
                  }
                  continue loop1;
               },§§goto(addr46))
               {
                  while(true)
                  {
                     §§push(this.§"_§);
                     addr46:
                     while(true)
                     {
                        §§pop().onComplete = this.§2G§;
                        §§push(this.§"_§);
                        addr66:
                        continue loop1;
                        if(_loc2_ || _loc2_)
                        {
                           §§pop().play();
                           if(!_loc1_)
                           {
                              break loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr104);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || param1)
         {
            if("CLOSE" === _loc4_)
            {
               addr60:
               §§push(0);
               if(!_loc5_)
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
                  if(_loc5_ || param3)
                  {
                     dispatchEvent(new PopupClosedEvent(PopupClosedEvent.§`T§));
                     if(_loc6_)
                     {
                     }
                     break;
                  }
            }
            return;
         }
         §§goto(addr60);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.show(param1);
            do
            {
               this.§2G§();
            }
            while(!_loc3_);
            
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(this.§"_§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§"_§);
                     addr73:
                     while(true)
                     {
                        §§pop().stop();
                        addr74:
                        while(true)
                        {
                           this.§"_§ = null;
                           addr53:
                           addr55:
                           while(!_loc4_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  super.hide(param1,param2);
                  if(_loc4_)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr53);
                  §§goto(addr55);
               }
               return;
               addr48:
            }
            §§goto(addr73);
         }
         §§goto(addr48);
      }
      
      override public function updateTextFields() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §&$§.§[!1§.updateTextFields(§[S§,"CodeSubmissionSuccessful_Popup");
         }
      }
   }
}
