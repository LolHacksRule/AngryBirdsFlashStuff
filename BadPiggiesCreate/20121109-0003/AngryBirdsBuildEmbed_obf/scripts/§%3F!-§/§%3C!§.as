package §?!-§
{
   import § !r§.Base64;
   import §!"§.§9o§;
   import §1?§.§+!§;
   import §=V§.§,m§;
   import §@!X§.§7j§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §<!§ extends EventDispatcher
   {
       
      
      private var §+;§:Boolean;
      
      private var §"$§:Stage;
      
      private var §`!;§:Boolean = false;
      
      public function §<!§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(!(_loc2_ && this))
            {
               §§goto(addr38);
            }
            §§goto(addr43);
         }
         addr38:
         this.§"$§ = param1;
         if(!_loc2_)
         {
            addr43:
            this.init();
         }
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §,m§.addCallback("pause",this.§6W§);
            if(!_loc2_)
            {
               addr25:
               §,m§.addCallback("resume",this.§3_§);
            }
            return;
         }
         §§goto(addr25);
      }
      
      private function §6W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!this.§`!;§)
         {
            if(_loc2_ || _loc2_)
            {
               this.§`!;§ = true;
               if(_loc2_ || _loc1_)
               {
                  addr57:
                  §§push(this);
                  §§push(§'!V§.§=!A§);
                  if(_loc2_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().§+;§ = §§pop();
               }
               §'!V§.pause();
               §§push(AngryBirdsFP11.§`!d§);
               if(_loc2_)
               {
                  §§pop().§2t§();
                  this.§#!t§();
                  §§push(AngryBirdsFP11.§`!d§);
               }
               §§pop().externalPause();
               §§goto(addr76);
            }
            §§goto(addr57);
         }
         addr76:
      }
      
      private function §3_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§`!;§);
         if(!_loc2_)
         {
            if(!§§pop())
            {
               if(_loc1_)
               {
                  return;
               }
               addr57:
               §'!V§.resume();
            }
            else
            {
               this.§`!;§ = false;
               addr56:
               if(this.§+;§)
               {
                  §§goto(addr57);
               }
            }
            §+!§.§4z§(AngryBirdsFP11.§%!8§);
            §§push(AngryBirdsFP11.§`!d§);
            if(_loc1_)
            {
               §§pop().externalResume();
               §§push(AngryBirdsFP11.§`!d§);
            }
            §§pop().§2#§();
            return;
         }
         §§goto(addr56);
      }
      
      public function §#!t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §7j§.§else§.§[$§ = this.§;2§;
         }
      }
      
      private function §;2§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && _loc2_))
         {
            dispatchEvent(new Event(Event.INIT));
         }
         §§push(0.25);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = int(this.§"$§.stageWidth);
         var _loc3_:* = int(this.§"$§.stageHeight);
         §§push(_loc2_);
         if(_loc7_ || _loc2_)
         {
            §§push(2);
            if(!(_loc8_ && _loc3_))
            {
               §§push(§§pop() < §§pop());
               if(_loc7_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc8_ && _loc2_))
                     {
                        addr72:
                        §§pop();
                        §§push(_loc3_ < 2);
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc8_)
                     {
                        §§push(AngryBirdsFP11.stageWidth);
                        if(_loc7_ || this)
                        {
                           _loc2_ = int(§§pop());
                           if(!(_loc8_ && this))
                           {
                              addr97:
                              §§push(AngryBirdsFP11.stageHeight);
                              if(_loc7_ || _loc2_)
                              {
                                 §§push(int(§§pop()));
                              }
                              _loc3_ = §§pop();
                              §§push(int(Math.max(8,Math.min(_loc2_,2880))));
                              if(!_loc8_)
                              {
                                 addr128:
                                 _loc2_ = §§pop();
                                 if(_loc7_)
                                 {
                                    addr139:
                                    _loc3_ = int(Math.max(8,Math.min(_loc3_,2880)));
                                 }
                                 var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * _loc1_),Math.floor(_loc3_ * _loc1_),false);
                                 var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
                                 if(!(_loc8_ && this))
                                 {
                                    §7j§.drawToBitmapData(_loc5_);
                                    if(!_loc8_)
                                    {
                                       addr174:
                                       _loc4_.draw(_loc5_,new Matrix(_loc1_,0,0,_loc1_));
                                    }
                                    try
                                    {
                                       _loc4_.draw(this.§"$§,new Matrix(_loc1_,0,0,_loc1_));
                                    }
                                    catch(e:Error)
                                    {
                                    }
                                    _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
                                    if(!_loc8_)
                                    {
                                       §,m§.performCall("flashScreenshotReadyHandler",Base64.§=G§(new §9o§(70).encode(_loc4_)));
                                       if(_loc7_ || this)
                                       {
                                          addr245:
                                          _loc5_.dispose();
                                          _loc4_.dispose();
                                       }
                                       §7j§.§else§.§[$§ = null;
                                       if(!_loc8_)
                                       {
                                          dispatchEvent(new Event(Event.COMPLETE));
                                       }
                                       return;
                                    }
                                    §§goto(addr245);
                                 }
                                 §§goto(addr174);
                              }
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr128);
                     }
                  }
                  §§goto(addr97);
               }
            }
         }
         §§goto(addr72);
      }
   }
}
