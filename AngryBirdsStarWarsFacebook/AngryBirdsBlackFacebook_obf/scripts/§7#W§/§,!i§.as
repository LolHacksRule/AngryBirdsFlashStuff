package §7#W§
{
   import §!"e§.§[!'§;
   import §!"e§.§`"W§;
   import §#!'§.§6"]§;
   import §,"N§.§""t§;
   import §7K§.§`!z§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §,!i§
   {
       
      
      protected var §9!D§:MovieClip;
      
      protected var §2"O§:§""t§;
      
      protected var §+I§:§`!z§;
      
      public function §,!i§(param1:MovieClip, param2:§""t§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super();
            loop0:
            while(true)
            {
               this.§9!D§ = param1;
               do
               {
                  this.§2"O§ = param2;
                  continue loop0;
               }
               while(_loc4_);
               
            }
         }
      }
      
      private function init() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = null;
         var _loc1_:Vector.<§`!z§> = this.§6!q§(this.§2"O§);
         if(_loc3_ || _loc1_)
         {
            §§push(Boolean(this.§2"O§.§^5§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§9!D§.visible = false;
                        if(!_loc4_)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              if(!_loc4_)
                              {
                                 if(_loc3_ || this)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§goto(addr33);
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       MovieClip(this.§9!D§.MovieClip_OfferSign).offerTexts.percentage.txtLabel.text = _loc2_;
                                       addr198:
                                       while(true)
                                       {
                                          §§push("-" + this.§2"O§.§<# §(this.§+I§.prices[0]));
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() + "%");
                                          }
                                          _loc2_ = §§pop();
                                          continue loop4;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§9!D§.visible = true;
                                 }
                              }
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    this.§9!D§.itemIcon.gotoAndStop(this.§+I§.prices[0].itemID.toLowerCase());
                                    loop7:
                                    while(true)
                                    {
                                       MovieClip(this.§9!D§._hitArea).buttonMode = true;
                                       addr104:
                                       while(true)
                                       {
                                          if(!(_loc4_ && this))
                                          {
                                             MovieClip(this.§9!D§._hitArea).addEventListener(MouseEvent.CLICK,this.§`!"§);
                                             while(!_loc3_)
                                             {
                                                §§goto(addr198);
                                             }
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                break loop3;
                                             }
                                             loop2:
                                             while(true)
                                             {
                                                §§push(_loc1_.length >= 1);
                                                if(_loc3_ || _loc1_)
                                                {
                                                   continue loop0;
                                                }
                                                addr205:
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop2;
                                                }
                                             }
                                             continue loop0;
                                             addr76:
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§+I§ = _loc1_[0];
                                    }
                                    addr183:
                                 }
                                 §§goto(addr198);
                              }
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr183);
                  }
                  addr33:
                  return;
                  addr181:
                  addr85:
               }
               §§goto(addr205);
            }
         }
         §§goto(addr85);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            MovieClip(this.§9!D§._hitArea).removeEventListener(MouseEvent.CLICK,this.§`!"§);
         }
      }
      
      protected function §6!q§(param1:§""t§) : Vector.<§`!z§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:Dictionary = null;
         var _loc5_:* = null;
         var _loc6_:§`!z§ = null;
         var _loc2_:Vector.<§`!z§> = new Vector.<§`!z§>(0);
         var _loc3_:int = 1;
         if(!(_loc9_ && this))
         {
            §§push(param1.§^5§);
            if(!(_loc9_ && _loc2_))
            {
               if(§§pop())
               {
                  addr65:
                  _loc4_ = param1.§^5§.discounts;
                  addr63:
                  for(_loc5_ in _loc4_)
                  {
                     _loc6_ = §`!z§(_loc4_[_loc5_]);
                     if(_loc10_)
                     {
                        _loc2_.push(_loc6_);
                        if(!(_loc9_ && _loc2_))
                        {
                           if(_loc2_.length < _loc3_)
                           {
                              continue;
                           }
                           §§goto(addr113);
                           continue;
                        }
                     }
                     break;
                  }
               }
               return _loc2_;
            }
            §§goto(addr65);
         }
         §§goto(addr63);
      }
      
      private function §`!"§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §6"]§.§"#-§(this.§+I§.prices[0].itemID);
            if(!_loc4_)
            {
               §[!'§.§-![§ = false;
            }
         }
         var _loc2_:§[!j§ = new §[!'§(§`"W§.§+v§,§+5§.TOP,this.§+I§);
         if(_loc3_ || _loc3_)
         {
            §4#;§.singleton.popupManager.openPopup(_loc2_,true,true,true);
         }
      }
   }
}
