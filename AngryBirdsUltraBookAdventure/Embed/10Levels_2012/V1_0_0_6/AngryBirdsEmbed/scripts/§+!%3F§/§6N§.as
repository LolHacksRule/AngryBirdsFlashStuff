package §+!?§
{
   import §#h§.§ !H§;
   import §>K§.Base64;
   import §>R§.§?K§;
   import §]!+§.§%@§;
   import §catch§.§4@§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §6N§ extends EventDispatcher
   {
       
      
      private var §`c§:Boolean;
      
      private var §?$§:Stage;
      
      private var §5F§:Boolean = false;
      
      public function §6N§(param1:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super();
            if(!(_loc3_ && param1))
            {
               this.§?$§ = param1;
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
            §?K§.addCallback("pause",this.§3%§);
            if(_loc2_ || this)
            {
               §?K§.addCallback("resume",this.§=!3§);
            }
         }
      }
      
      private function §3%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(!this.§5F§)
            {
               this.§5F§ = true;
               if(_loc2_ || _loc2_)
               {
                  §§push(this);
                  §§push(§"h§.isPaused);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().§`c§ = §§pop();
                  §"h§.pause();
                  if(_loc2_)
                  {
                     §§push(AngryBirdsFP11.§0P§);
                     if(!_loc1_)
                     {
                        §§pop().§#2§();
                        addr78:
                        this.§%!3§();
                        §§goto(addr90);
                     }
                     §§pop().externalPause();
                     addr90:
                     if(_loc2_ || _loc1_)
                     {
                        §§push(AngryBirdsFP11.§0P§);
                     }
                     return;
                  }
               }
               §§goto(addr78);
            }
         }
         §§goto(addr78);
      }
      
      private function §=!3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§5F§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  return;
               }
               this.§5F§ = false;
               §§push(this.§`c§);
            }
            if(§§pop())
            {
               if(_loc2_)
               {
                  §"h§.resume();
                  if(_loc2_ || _loc2_)
                  {
                     § !H§.§0G§(AngryBirdsFP11.§%!4§);
                     addr54:
                     if(_loc2_ || _loc2_)
                     {
                        §§push(AngryBirdsFP11.§0P§);
                        if(!(_loc1_ && this))
                        {
                           §§pop().externalResume();
                           §§goto(addr95);
                        }
                        §§pop().§]!'§();
                     }
                     §§goto(addr92);
                  }
               }
               addr95:
               if(!(_loc1_ && this))
               {
                  addr92:
                  §§push(AngryBirdsFP11.§0P§);
               }
               return;
            }
            §§goto(addr54);
         }
         §§goto(addr92);
      }
      
      public function §%!3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §4@§.§0W§.§,!A§ = this.§5P§;
         }
      }
      
      private function §5P§() : void
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
         var _loc2_:int = this.§?$§.stageWidth;
         var _loc3_:* = int(this.§?$§.stageHeight);
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
                        §4@§.drawToBitmapData(_loc5_);
                        if(_loc7_)
                        {
                           _loc4_.draw(_loc5_,new Matrix(_loc1_,0,0,_loc1_));
                        }
                     }
                     try
                     {
                        _loc4_.draw(this.§?$§,new Matrix(_loc1_,0,0,_loc1_));
                        if(_loc7_)
                        {
                           _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
                           §?K§.§+v§("flashScreenshotReadyHandler",Base64.§!"§(new §%@§(70).encode(_loc4_)));
                           _loc5_.dispose();
                           addr193:
                           if(_loc7_)
                           {
                              _loc4_.dispose();
                           }
                           §4@§.§0W§.§,!A§ = null;
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
