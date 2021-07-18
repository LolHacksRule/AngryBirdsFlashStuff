package §!X§
{
   import §5X§.§+!#§;
   import §7!H§.AbstractPopup;
   import §77§.§ ",§;
   import §<!X§.§7C§;
   import §^=§.§-G§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class TutorialPopup extends AbstractPopup
   {
      
      public static const §[!U§:String = "TutorialPopup";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §[!U§ = "TutorialPopup";
         }
      }
      
      protected var §?!B§:MovieClip;
      
      protected var §7!n§:String;
      
      protected var §&!i§:§#"#§;
      
      protected var §=!1§:Boolean;
      
      protected var §9"=§:§ ",§;
      
      protected var §@"A§:TextField;
      
      public function TutorialPopup(param1:int, param2:int, param3:MovieClip, param4:String, param5:§#"#§, param6:Boolean = true)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param3)
         {
            super(param1,param2,§-G§.§4+§.Popups.Popup_Tutorial[0],§[!U§);
            loop0:
            while(true)
            {
               this.§7!n§ = param4;
               while(true)
               {
                  this.§&!i§ = param5;
                  addr92:
                  while(_loc8_)
                  {
                  }
                  continue loop0;
                  addr38:
                  if(!(_loc7_ && param2))
                  {
                     return;
                  }
               }
            }
         }
         while(true)
         {
            this.§=!1§ = param6;
            loop4:
            while(true)
            {
               §#!j§ = true;
               addr82:
               while(true)
               {
                  this.§?!B§ = param3;
                  continue loop4;
               }
            }
         }
      }
      
      public function get §^!y§() : String
      {
         return this.§7!n§;
      }
      
      public function get title() : String
      {
         return this.§&!i§.solve(this.§^!y§);
      }
      
      override protected function init() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.init();
         }
         var _loc1_:MovieClip = §[S§.getItemByName("MovieClip_ContentMask").mClip;
         var _loc2_:MovieClip = §[S§.getItemByName("Container_Animation").mClip;
         if(_loc4_)
         {
            _loc2_.addChild(this.§?!B§);
            loop0:
            while(true)
            {
               this.§@"A§ = TextField(§[S§.getItemByName("MovieClip_Title").mClip.titleContainer.title);
               loop1:
               while(true)
               {
                  this.§@"A§.text = this.title;
                  loop2:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        this.§9"=§ = § ",§(§[S§.getItemByName("Container_CloseButton"));
                        do
                        {
                           _loc2_.mask = _loc1_;
                        }
                        while(!_loc4_);
                        
                        if(_loc4_ || _loc1_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr88);
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §#'§();
            loop0:
            while(true)
            {
               §-!w§ = new §?p§(param1,§[S§.mClip.stage,1000 / 60);
               while(true)
               {
                  if(_loc3_)
                  {
                     if(this.§=!1§)
                     {
                        if(_loc3_ || param1)
                        {
                           if(_loc3_)
                           {
                              §-!w§.addEventListener(§?p§.§8h§,this.§2!e§);
                              addr58:
                              break;
                           }
                           continue;
                        }
                        §§goto(addr58);
                     }
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr58);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.show(param1);
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super.hide(param1);
         }
      }
      
      protected function §2!e§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(§-!w§)
            {
               while(true)
               {
                  §-!w§.removeEventListener(§?p§.§8h§,this.§2!e§);
                  addr92:
                  while(true)
                  {
                  }
                  addr66:
                  if(_loc3_ && param1)
                  {
                     continue;
                  }
                  §§push(this.§9"=§);
                  §§push(this.§=!1§);
                  if(!_loc3_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().visible = §§pop();
                  addr73:
                  if(_loc3_ && _loc2_)
                  {
                     while(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr66);
                        §§goto(addr73);
                     }
                     §§goto(addr92);
                     addr59:
                  }
                  return;
                  addr54:
               }
            }
            while(true)
            {
               this.§=!1§ = false;
               §§goto(addr59);
               §§goto(addr92);
            }
         }
         §§goto(addr54);
      }
      
      override protected function onTransitionStart(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:MovieClip = §[S§.getItemByName("MovieClip_Title").mClip;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§7C§.§@!=§);
               addr172:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        §§push(this.§9"=§);
                        addr175:
                        while(true)
                        {
                           §§push(this.§=!1§);
                           addr177:
                           while(true)
                           {
                              §§push(!§§pop());
                              addr178:
                              while(true)
                              {
                                 §§pop().visible = §§pop();
                                 addr179:
                                 while(true)
                                 {
                                    _loc2_.visible = true;
                                    addr158:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr173:
                  }
                  while(true)
                  {
                     §§push(param1);
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr158);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            §§push(param2.toUpperCase() == "CLOSE");
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr93:
                     do
                     {
                        §§push(this.§=!1§);
                        if(!_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(_loc4_)
                        {
                           continue loop1;
                        }
                     }
                     while(!_loc4_);
                     
                     continue loop0;
                  }
               }
               loop3:
               while(§§pop())
               {
                  if(!(_loc5_ || this))
                  {
                     while(true)
                     {
                        break loop3;
                     }
                     return;
                     addr85:
                     addr37:
                  }
                  if(_loc5_ || param2)
                  {
                     return;
                  }
                  §§goto(addr93);
               }
               super.onUIInteraction(param1,param2,param3);
               if(!_loc5_)
               {
                  §§goto(addr85);
               }
               §§goto(addr37);
            }
         }
         §§goto(addr85);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§-!w§)
            {
               while(true)
               {
                  §-!w§.removeEventListener(§?p§.§8h§,this.§2!e§);
                  addr74:
                  while(true)
                  {
                  }
               }
               addr68:
            }
            loop0:
            while(true)
            {
               this.§?!B§.gotoAndStop(this.§?!B§.totalFrames);
               while(_loc1_ || this)
               {
                  super.dispose();
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(_loc1_)
                  {
                     break loop0;
                  }
               }
               §§goto(addr74);
            }
            return;
         }
         §§goto(addr68);
      }
   }
}
