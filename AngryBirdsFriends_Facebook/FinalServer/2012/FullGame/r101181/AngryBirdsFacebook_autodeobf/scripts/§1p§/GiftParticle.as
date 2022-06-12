package §1p§
{
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class GiftParticle extends Sprite
   {
      
      private static var §=!5§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=!5§ = §8B§.§6"C§("GiftParticle");
         }
      }
      
      private var §^D§:MovieClip;
      
      private var §-"-§:Point;
      
      private var §2"8§:Number;
      
      private var §+!]§:Number = 2;
      
      public function GiftParticle(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super();
            while(true)
            {
               this.§^D§ = new §=!5§();
               loop1:
               while(true)
               {
                  addChild(this.§^D§);
                  loop2:
                  while(true)
                  {
                     this.§^D§.gotoAndStop(1 + Math.round(Math.random() * (this.§^D§.totalFrames - 1)));
                     loop3:
                     for(; !_loc3_; if(_loc3_ && param1)
                     {
                        continue;
                     })
                     {
                        this.§-"-§ = new Point(Math.random() * 8 - 4,Math.random() * 8 - 5);
                        while(!_loc3_)
                        {
                           §§push(this);
                           §§push(Math.random() * 16);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§pop() - 8);
                           }
                           §§pop().§2"8§ = §§pop();
                           loop5:
                           while(true)
                           {
                              addEventListener(Event.ENTER_FRAME,this.§-T§);
                              addr54:
                              while(true)
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    continue loop3;
                                 }
                                 continue loop5;
                              }
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
            addr158:
         }
         loop7:
         while(true)
         {
            this.x = param1;
            while(_loc4_)
            {
               this.y = param2;
               if(_loc3_)
               {
                  continue;
               }
               if(_loc4_)
               {
                  if(!_loc3_)
                  {
                     break loop7;
                  }
                  §§goto(addr158);
               }
               §§goto(addr54);
            }
            §§goto(addr113);
         }
      }
      
      private function §-T§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            x += this.§-"-§.x;
            if(_loc4_ || param1)
            {
               y += this.§-"-§.y;
               if(!_loc3_)
               {
                  rotation += this.§2"8§;
                  if(!(_loc3_ && _loc2_))
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§2"8§);
                        if(_loc4_)
                        {
                           §§push(§§pop() * 0.95);
                        }
                        §§pop().§2"8§ = §§pop();
                        if(!_loc3_)
                        {
                           this.§-"-§.y += 1 / 60 * 9.8;
                           if(_loc4_)
                           {
                              if(true)
                              {
                                 alpha = Math.min(1,this.§+!]§ = this.§+!]§ - 0.05);
                                 if(!(_loc3_ && this))
                                 {
                                    if(alpha <= 0)
                                    {
                                       if(_loc4_ || param1)
                                       {
                                          addr163:
                                          removeEventListener(Event.ENTER_FRAME,this.§-T§);
                                          break;
                                       }
                                       break;
                                    }
                                    addr128:
                                    return;
                                    addr127:
                                 }
                              }
                              continue;
                              break;
                           }
                           §§goto(addr127);
                        }
                        break;
                     }
                  }
                  while(parent)
                  {
                     if(!_loc3_)
                     {
                        if(_loc4_)
                        {
                           parent.removeChild(this);
                           addr152:
                           break;
                        }
                        continue;
                     }
                     §§goto(addr152);
                  }
               }
               §§goto(addr128);
            }
            §§goto(addr163);
         }
         §§goto(addr152);
      }
   }
}
