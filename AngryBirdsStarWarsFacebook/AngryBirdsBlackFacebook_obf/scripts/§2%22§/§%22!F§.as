package §2"§
{
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class §"!F§ extends Sprite
   {
      
      private static var §'!r§:Class;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'!r§ = §5_§.§`"G§("GiftBox_Particles");
         }
      }
      
      private var §=7§:MovieClip;
      
      private var §5"L§:Point;
      
      private var §-!N§:Number;
      
      private var § #H§:Number = 2;
      
      public function §"!F§(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§=7§ = new §'!r§();
               addr136:
               if(_loc3_ && this)
               {
                  continue;
               }
               this.§5"L§ = new Point(Math.random() * 8 - 4,Math.random() * 8 - 5);
               while(true)
               {
                  §§push(this);
                  §§push(Math.random() * 16);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() - 8);
                  }
                  §§pop().§-!N§ = §§pop();
                  while(_loc4_ || param2)
                  {
                     addEventListener(Event.ENTER_FRAME,this.§-!u§);
                     while(_loc4_)
                     {
                        this.x = param1;
                        while(_loc4_)
                        {
                           this.y = param2;
                           if(!_loc4_)
                           {
                              continue;
                           }
                           addr35:
                           if(!(_loc3_ && _loc3_))
                           {
                              addr42:
                              if(!(_loc3_ && _loc3_))
                              {
                                 return;
                              }
                              while(true)
                              {
                                 this.§=7§.gotoAndStop(1 + Math.round(Math.random() * (this.§=7§.totalFrames - 1)));
                                 §§goto(addr42);
                              }
                              addr159:
                           }
                           while(!_loc3_)
                           {
                              §§goto(addr136);
                              §§goto(addr35);
                           }
                           while(true)
                           {
                              addChild(this.§=7§);
                              §§goto(addr159);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr165);
      }
      
      private function §-!u§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            x += this.§5"L§.x;
            loop0:
            while(true)
            {
               y += this.§5"L§.y;
               if(_loc4_)
               {
                  break;
               }
               if(_loc4_ && param1)
               {
                  continue;
               }
               rotation += this.§-!N§;
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§-!N§);
                     if(!(_loc4_ && this))
                     {
                        §§push(§§pop() * 0.95);
                     }
                     §§pop().§-!N§ = §§pop();
                     if(_loc3_ || this)
                     {
                        this.§5"L§.y += 1 / 60 * 9.8;
                        if(_loc3_)
                        {
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           if(false)
                           {
                              continue;
                           }
                           alpha = Math.min(1,this.§ #H§ = this.§ #H§ - 0.05);
                           if(!_loc4_)
                           {
                              break loop0;
                           }
                        }
                        loop4:
                        while(parent)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              if(_loc3_ || _loc2_)
                              {
                                 break loop2;
                              }
                              continue;
                           }
                           while(true)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 break loop4;
                              }
                              addr167:
                              while(true)
                              {
                                 removeEventListener(Event.ENTER_FRAME,this.§-!u§);
                                 continue loop4;
                              }
                           }
                        }
                        §§goto(addr122);
                     }
                     break;
                  }
                  addr143:
                  while(true)
                  {
                     parent.removeChild(this);
                     §§goto(addr146);
                  }
               }
            }
            if(alpha <= 0)
            {
               §§goto(addr167);
            }
            addr122:
            return;
         }
         §§goto(addr143);
      }
   }
}
