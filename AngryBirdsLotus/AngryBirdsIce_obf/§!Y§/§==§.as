package §!Y§
{
   import §-Z§.§?h§;
   import §3O§.§@6§;
   import §;8§.Base64;
   import §>e§.§6T§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §==§ extends EventDispatcher
   {
       
      
      private var §?=§:Boolean;
      
      private var §8!G§:Stage;
      
      private var §>2§:Boolean = false;
      
      public function §==§(param1:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
         }
         do
         {
            this.§8!G§ = param1;
            do
            {
               this.init();
            }
            while(!_loc2_);
            
         }
         while(_loc3_ && _loc2_);
         
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §%B§.addCallback("pause",this.§ !?§);
            do
            {
               §%B§.addCallback("resume",this.§^!§);
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private function § !?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!this.§>2§)
         {
            this.§>2§ = true;
            §§push(this);
            §§push(§[o§.§'Z§);
            if(!(_loc2_ && _loc1_))
            {
               §§push(!§§pop());
            }
            §§pop().§?=§ = §§pop();
            loop0:
            while(true)
            {
               §[o§.pause();
               §§push(AngryBirdsFP11.§?L§);
               while(true)
               {
                  §§pop().§&x§();
                  while(true)
                  {
                     this.§4P§();
                     while(_loc1_)
                     {
                        continue loop0;
                        §§pop().externalPause();
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr17);
                        }
                     }
                  }
                  addr67:
                  §§push(AngryBirdsFP11.§?L§);
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  §§goto(addr31);
               }
            }
         }
         addr17:
      }
      
      private function §^!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§>2§);
            while(true)
            {
               if(!§§pop())
               {
                  §§goto(addr104);
               }
               this.§>2§ = false;
               loop1:
               while(true)
               {
                  §§push(this.§?=§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     while(_loc2_)
                     {
                        §[o§.resume();
                        if(_loc1_)
                        {
                           continue loop1;
                        }
                        while(true)
                        {
                        }
                        if(_loc2_ || this)
                        {
                           return;
                        }
                     }
                     addr104:
                     return;
                  }
                  while(true)
                  {
                     §@6§.§`n§(AngryBirdsFP11.§6!<§);
                     loop4:
                     while(true)
                     {
                        §§push(AngryBirdsFP11.§?L§);
                        loop5:
                        while(true)
                        {
                           §§pop().externalResume();
                           addr74:
                           while(_loc2_)
                           {
                              continue loop5;
                           }
                           continue loop4;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr95);
      }
      
      public function §4P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §?h§.§ n§.§5R§ = this.§4!%§;
         }
      }
      
      private function §4!%§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || _loc2_)
         {
            dispatchEvent(new Event(Event.INIT));
         }
         §§push(0.25);
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = int(this.§8!G§.stageWidth);
         var _loc3_:* = int(this.§8!G§.stageHeight);
         §§push(_loc2_);
         §§push(2);
         loop0:
         while(true)
         {
            §§push(§§pop() < §§pop());
            if(_loc8_ || _loc3_)
            {
               if(!§§pop())
               {
                  addr152:
                  loop7:
                  while(true)
                  {
                     §§pop();
                     addr153:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc8_ || _loc1_)
                        {
                           continue loop0;
                        }
                        addr128:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           §§push(int(AngryBirdsFP11.stageHeight));
                           if(!(_loc8_ || this))
                           {
                              continue;
                           }
                           _loc3_ = §§pop();
                        }
                        continue loop7;
                     }
                     continue loop0;
                  }
                  addr152:
               }
               else
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§goto(addr128);
                        }
                        addr125:
                     }
                     addr115:
                     §§push(§§pop() < §§pop());
                     if(_loc8_ || _loc3_)
                     {
                        continue;
                     }
                     §§goto(addr152);
                  }
               }
               loop4:
               while(true)
               {
                  §§push(int(Math.max(8,Math.min(_loc2_,2880))));
                  while(true)
                  {
                     _loc2_ = §§pop();
                     if(_loc8_ || this)
                     {
                        §§push(int(Math.max(8,Math.min(_loc3_,2880))));
                        if(_loc7_)
                        {
                           continue;
                        }
                        _loc3_ = §§pop();
                        if(_loc8_ || _loc1_)
                        {
                           if(true)
                           {
                              break loop4;
                           }
                           continue loop4;
                        }
                        §§goto(addr153);
                     }
                     else
                     {
                        §§goto(addr125);
                     }
                  }
                  §§goto(addr128);
               }
               var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * _loc1_),Math.floor(_loc3_ * _loc1_),false);
               var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
               if(_loc8_ || this)
               {
                  §?h§.drawToBitmapData(_loc5_);
                  if(_loc8_ || _loc2_)
                  {
                     _loc4_.draw(_loc5_,new Matrix(_loc1_,0,0,_loc1_));
                  }
               }
               try
               {
                  _loc4_.draw(this.§8!G§,new Matrix(_loc1_,0,0,_loc1_));
                  if(!(_loc7_ && this))
                  {
                     addr231:
                     _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
                     §%B§.§,!2§("flashScreenshotReadyHandler",Base64.§`J§(new §6T§(70).encode(_loc4_)));
                     _loc5_.dispose();
                     _loc4_.dispose();
                     addr287:
                  }
               }
               catch(e:Error)
               {
                  §§goto(addr231);
               }
               §?h§.§ n§.§5R§ = null;
               addr277:
               if(!_loc7_)
               {
                  dispatchEvent(new Event(Event.COMPLETE));
                  if(_loc7_ && _loc1_)
                  {
                     §§goto(addr277);
                  }
                  return;
               }
               §§goto(addr287);
            }
            §§goto(addr152);
         }
      }
   }
}
