package §"!5§
{
   import §&p§.§'_§;
   import §0!<§.Base64;
   import §1d§.§+!?§;
   import §3!9§.§2!4§;
   import §?!?§.§3!E§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §78§ extends EventDispatcher
   {
       
      
      private var §4!,§:Boolean;
      
      private var §<!1§:Stage;
      
      private var §;-§:Boolean = false;
      
      public function §78§(param1:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super();
            if(!(_loc3_ && param1))
            {
               this.§<!1§ = param1;
               if(_loc2_)
               {
                  this.init();
               }
            }
         }
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §2!4§.addCallback("pause",this.§6v§);
            if(_loc2_ || this)
            {
               §2!4§.addCallback("resume",this.§<!3§);
            }
         }
      }
      
      private function §6v§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(!this.§;-§)
            {
               this.§;-§ = true;
               if(_loc2_ || _loc2_)
               {
                  §§push(this);
                  §§push(§,!!§.isPaused);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().§4!,§ = §§pop();
                  §,!!§.pause();
                  if(_loc2_)
                  {
                     §§push(AngryBirdsFP11.§@t§);
                     if(!_loc1_)
                     {
                        §§pop().§>!1§();
                        addr78:
                        this.§+8§();
                        §§goto(addr90);
                     }
                     §§pop().externalPause();
                     addr90:
                     if(_loc2_ || _loc1_)
                     {
                        §§push(AngryBirdsFP11.§@t§);
                     }
                     return;
                  }
               }
               §§goto(addr78);
            }
         }
         §§goto(addr78);
      }
      
      private function §<!3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§;-§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  return;
               }
               this.§;-§ = false;
               §§push(this.§4!,§);
            }
            if(§§pop())
            {
               if(_loc2_)
               {
                  §,!!§.resume();
                  if(_loc2_ || _loc2_)
                  {
                     §3!E§.§%!%§(AngryBirdsFP11.§%w§);
                     addr54:
                     if(_loc2_ || _loc2_)
                     {
                        §§push(AngryBirdsFP11.§@t§);
                        if(!(_loc1_ && this))
                        {
                           §§pop().externalResume();
                           §§goto(addr95);
                        }
                        §§pop().§=w§();
                     }
                     §§goto(addr92);
                  }
               }
               addr95:
               if(!(_loc1_ && this))
               {
                  addr92:
                  §§push(AngryBirdsFP11.§@t§);
               }
               return;
            }
            §§goto(addr54);
         }
         §§goto(addr92);
      }
      
      public function §+8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'_§.§17§.§"i§ = this.§9x§;
         }
      }
      
      private function §9x§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            dispatchEvent(new Event(Event.INIT));
         }
         §§push(0.25);
         if(!(_loc8_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:int = this.§<!1§.stageWidth;
         var _loc3_:* = int(this.§<!1§.stageHeight);
         if(_loc7_)
         {
            §§push(_loc2_);
            if(_loc7_ || _loc1_)
            {
               §§push(2);
               if(_loc7_ || _loc1_)
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc8_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc8_)
                        {
                           §§pop();
                           addr72:
                           §§push(_loc3_ < 2);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     §§push(AngryBirdsFP11.stageWidth);
                     if(_loc7_ || _loc1_)
                     {
                        _loc2_ = §§pop();
                        if(_loc7_)
                        {
                           §§push(AngryBirdsFP11.stageHeight);
                           if(_loc7_ || _loc2_)
                           {
                              _loc3_ = int(§§pop());
                              addr116:
                              _loc2_ = Math.max(8,Math.min(_loc2_,2880));
                              addr117:
                              §§push(int(Math.max(8,Math.min(_loc3_,2880))));
                              addr98:
                           }
                        }
                        §§goto(addr117);
                     }
                     _loc3_ = §§pop();
                     var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * _loc1_),Math.floor(_loc3_ * _loc1_),false);
                     var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
                     if(!(_loc8_ && _loc2_))
                     {
                        §'_§.drawToBitmapData(_loc5_);
                        if(_loc7_)
                        {
                           _loc4_.draw(_loc5_,new Matrix(_loc1_,0,0,_loc1_));
                        }
                     }
                     try
                     {
                        _loc4_.draw(this.§<!1§,new Matrix(_loc1_,0,0,_loc1_));
                        if(_loc7_)
                        {
                           _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
                           §2!4§.§[L§("flashScreenshotReadyHandler",Base64.§?+§(new §+!?§(70).encode(_loc4_)));
                           _loc5_.dispose();
                           addr193:
                           if(_loc7_)
                           {
                              _loc4_.dispose();
                           }
                           §'_§.§17§.§"i§ = null;
                        }
                     }
                     catch(e:Error)
                     {
                        §§goto(addr193);
                     }
                     dispatchEvent(new Event(Event.COMPLETE));
                     return;
                  }
                  §§goto(addr98);
               }
               §§goto(addr72);
            }
         }
         §§goto(addr116);
      }
   }
}
