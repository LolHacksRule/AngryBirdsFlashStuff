package §5!L§
{
   import §#X§.§,!F§;
   import §3a§.Base64;
   import §<d§.§9!1§;
   import §=!0§.§>I§;
   import §>`§.§'&§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §0!L§ extends EventDispatcher
   {
       
      
      private var §6!K§:Boolean;
      
      private var §]!M§:Stage;
      
      private var §in §:Boolean = false;
      
      public function §0!L§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(!(_loc2_ && _loc2_))
            {
               this.§]!M§ = param1;
               if(!(_loc2_ && _loc3_))
               {
                  addr48:
                  this.init();
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9!1§.addCallback("pause",this.§>!H§);
            if(!(_loc1_ && _loc2_))
            {
               addr41:
               §9!1§.addCallback("resume",this.§5!D§);
            }
            return;
         }
         §§goto(addr41);
      }
      
      private function §>!H§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!this.§in §)
         {
            if(_loc2_ || _loc1_)
            {
               this.§in § = true;
               if(_loc1_ && this)
               {
               }
               §§goto(addr88);
            }
            §§push(this);
            §§push(§=w§.isPaused);
            if(!(_loc1_ && this))
            {
               §§push(!§§pop());
            }
            §§pop().§6!K§ = §§pop();
            §=w§.pause();
            if(_loc2_)
            {
               §§push(AngryBirdsFP11.§ y§);
               if(!(_loc1_ && _loc2_))
               {
                  §§pop().§8<§();
                  this.§try §();
                  §§push(AngryBirdsFP11.§ y§);
               }
               §§pop().externalPause();
            }
         }
         addr88:
      }
      
      private function §5!D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§in §);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  this.§in § = false;
                  addr56:
                  if(this.§6!K§)
                  {
                     if(!_loc2_)
                     {
                        addr59:
                        §=w§.resume();
                        §§goto(addr61);
                     }
                     §§goto(addr75);
                  }
               }
               addr61:
               §,!F§.§7!&§(AngryBirdsFP11.§"0§);
               §§push(AngryBirdsFP11.§ y§);
               if(!(_loc2_ && this))
               {
                  §§pop().externalResume();
                  addr75:
                  §§push(AngryBirdsFP11.§ y§);
               }
               §§pop().§-u§();
               return;
            }
            §§goto(addr56);
         }
         §§goto(addr59);
      }
      
      public function §try §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §>I§.§`S§.§?D§ = this.§@l§;
         }
      }
      
      private function §@l§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && _loc1_))
         {
            dispatchEvent(new Event(Event.INIT));
         }
         §§push(0.25);
         if(_loc8_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = int(this.§]!M§.stageWidth);
         var _loc3_:* = int(this.§]!M§.stageHeight);
         if(!_loc7_)
         {
            §§push(_loc2_);
            if(!(_loc7_ && _loc3_))
            {
               §§push(2);
               if(_loc8_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc8_ || this)
                  {
                     if(!§§pop())
                     {
                        if(_loc8_ || this)
                        {
                           addr80:
                           §§pop();
                           §§push(_loc3_);
                           if(!_loc7_)
                           {
                              addr86:
                              if(§§pop() < 2)
                              {
                                 addr89:
                                 §§push(int(AngryBirdsFP11.stageWidth));
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    addr97:
                                    _loc2_ = §§pop();
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(AngryBirdsFP11.stageHeight);
                                       if(_loc8_ || _loc1_)
                                       {
                                          addr114:
                                          _loc3_ = int(§§pop());
                                          §§push(int(Math.max(8,Math.min(_loc2_,2880))));
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             addr141:
                                             _loc2_ = §§pop();
                                             §§push(int(Math.max(8,Math.min(_loc3_,2880))));
                                          }
                                          _loc3_ = §§pop();
                                          var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * _loc1_),Math.floor(_loc3_ * _loc1_),false);
                                          var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             §>I§.drawToBitmapData(_loc5_);
                                             if(_loc8_)
                                             {
                                                addr185:
                                                _loc4_.draw(_loc5_,new Matrix(_loc1_,0,0,_loc1_));
                                             }
                                             try
                                             {
                                                _loc4_.draw(this.§]!M§,new Matrix(_loc1_,0,0,_loc1_));
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
                                                   §§goto(addr223);
                                                }
                                                _loc5_.dispose();
                                                _loc4_.dispose();
                                                §>I§.§`S§.§?D§ = null;
                                             }
                                             catch(e:Error)
                                             {
                                                §§goto(addr223);
                                             }
                                             addr223:
                                             if(_loc8_)
                                             {
                                                §9!1§.§!!I§("flashScreenshotReadyHandler",Base64.§2!K§(new §'&§(70).encode(_loc4_)));
                                             }
                                             dispatchEvent(new Event(Event.COMPLETE));
                                             return;
                                          }
                                          §§goto(addr185);
                                       }
                                    }
                                    §§goto(addr141);
                                 }
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr80);
               }
               §§goto(addr86);
            }
            §§goto(addr89);
         }
         §§goto(addr114);
      }
   }
}
