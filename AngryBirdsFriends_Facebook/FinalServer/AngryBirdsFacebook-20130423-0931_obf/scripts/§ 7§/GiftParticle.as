package § 7§
{
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class GiftParticle extends Sprite
   {
      
      private static var §,!0§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,!0§ = §?q§.§ q§("GiftParticle");
         }
      }
      
      private var §@%§:MovieClip;
      
      private var §5U§:Point;
      
      private var §@!W§:Number;
      
      private var §&"?§:Number = 2;
      
      public function GiftParticle(param1:Number, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super();
            loop0:
            while(true)
            {
               this.§@%§ = new §,!0§();
               loop1:
               while(true)
               {
                  addChild(this.§@%§);
                  loop2:
                  for(; !_loc3_; while(_loc4_ || param2)
                  {
                     this.x = param1;
                     §§goto(addr54);
                  })
                  {
                     this.§@%§.gotoAndStop(1 + Math.round(Math.random() * (this.§@%§.totalFrames - 1)));
                     while(true)
                     {
                        this.§5U§ = new Point(Math.random() * 8 - 4,Math.random() * 8 - 5);
                        addr63:
                        if(_loc3_ && this)
                        {
                           continue;
                        }
                        this.y = param2;
                        addr70:
                        if(_loc3_)
                        {
                           while(true)
                           {
                              if(!(_loc4_ || _loc3_))
                              {
                                 continue loop2;
                              }
                              if(_loc3_)
                              {
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(Math.random() * 16);
                                    if(_loc4_ || this)
                                    {
                                       §§push(§§pop() - 8);
                                    }
                                    §§pop().§@!W§ = §§pop();
                                    while(true)
                                    {
                                       addEventListener(Event.ENTER_FRAME,this.§["R§);
                                       continue loop2;
                                       addr35:
                                       if(_loc4_ || _loc3_)
                                       {
                                          continue loop1;
                                       }
                                    }
                                 }
                                 return;
                                 addr49:
                                 addr130:
                              }
                              §§goto(addr63);
                              §§goto(addr70);
                           }
                           continue;
                           addr54:
                        }
                        §§goto(addr35);
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr130);
      }
      
      private function §["R§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            x += this.§5U§.x;
            loop0:
            while(true)
            {
               y += this.§5U§.y;
               if(_loc3_ && _loc3_)
               {
                  break;
               }
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               rotation += this.§@!W§;
               if(!_loc3_)
               {
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§@!W§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() * 0.95);
                     }
                     §§pop().§@!W§ = §§pop();
                     if(_loc4_)
                     {
                        this.§5U§.y += 1 / 60 * 9.8;
                        if(!_loc3_)
                        {
                           if(true)
                           {
                              alpha = Math.min(1,this.§&"?§ = this.§&"?§ - 0.05);
                              if(!_loc3_)
                              {
                                 if(alpha <= 0)
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       removeEventListener(Event.ENTER_FRAME,this.§["R§);
                                       break loop0;
                                       addr157:
                                       while(true)
                                       {
                                          if(!(_loc3_ && param1))
                                          {
                                             §§goto(addr128);
                                          }
                                          continue loop2;
                                       }
                                    }
                                    addr168:
                                 }
                                 addr128:
                                 return;
                                 addr127:
                              }
                           }
                           continue;
                           break loop0;
                        }
                        §§goto(addr168);
                     }
                     break loop0;
                  }
               }
               while(true)
               {
                  parent.removeChild(this);
                  §§goto(addr157);
               }
               addr154:
            }
            while(parent)
            {
               if(!(_loc3_ && this))
               {
                  if(!_loc4_)
                  {
                     continue;
                  }
                  §§goto(addr154);
               }
               §§goto(addr157);
            }
            §§goto(addr128);
         }
         §§goto(addr127);
      }
   }
}
