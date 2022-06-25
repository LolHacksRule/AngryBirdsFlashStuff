package §_-TG§
{
   import §_-qO§.§ in§;
   import §_-uY§.DisplayObject;
   import §_-uY§.Sprite;
   import §_-uY§.§_-2p§;
   
   public class §_-2u§ extends Sprite
   {
       
      
      protected var §_-0-x§:Sprite;
      
      protected var §_-GY§:DisplayObject;
      
      protected var §_-0CG§:Sprite;
      
      public function §_-2u§()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(!(_loc2_ && _loc1_))
            {
               addChild(this.§_-0CG§ = new Sprite());
               if(!_loc2_)
               {
                  addr40:
                  this.§_-0CG§.addChild(this.§_-0-x§ = new Sprite());
                  if(!(_loc2_ && _loc3_))
                  {
                     this.§_-GY§ = new §_-2p§(2,2,0);
                     loop0:
                     while(true)
                     {
                        §§push(this.§_-GY§);
                        loop1:
                        while(true)
                        {
                           §§push(§ in§.§_-W8§);
                           loop2:
                           while(true)
                           {
                              §§pop().width = §§pop();
                              loop3:
                              while(true)
                              {
                                 §§push(this.§_-GY§);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§ in§.§_-Kj§);
                                    if(!(_loc3_ || this))
                                    {
                                       break;
                                    }
                                    §§pop().height = §§pop();
                                    while(_loc3_)
                                    {
                                       continue loop0;
                                       if(_loc3_ || _loc1_)
                                       {
                                          return;
                                          addr101:
                                       }
                                    }
                                    continue loop3;
                                    addr107:
                                    while(true)
                                    {
                                       §§push(this.§_-GY§);
                                       if(!_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop4;
                                       addr85:
                                       §§pop().alpha = 0.5;
                                       if(_loc2_ && _loc1_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr94);
                                    }
                                    §§goto(addr101);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     addr155:
                  }
                  §§goto(addr101);
               }
               §§goto(addr155);
            }
            §§goto(addr107);
         }
         §§goto(addr40);
      }
      
      public function get §_-9A§() : Sprite
      {
         return this.§_-0-x§;
      }
      
      public function get §_-06T§() : DisplayObject
      {
         return this.§_-GY§;
      }
      
      public function get §_-Ly§() : Sprite
      {
         return this.§_-0CG§;
      }
      
      public function §_-eb§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§_-GY§.width);
         if(!_loc5_)
         {
            §§push(§§pop() / this.§_-GY§.height);
            if(!(_loc5_ && param1))
            {
               addr32:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               §§push(this.§_-GY§);
               loop0:
               while(true)
               {
                  §§push(param1);
                  if(!(_loc5_ && param1))
                  {
                     §§push(600);
                     while(true)
                     {
                        §§push(_loc3_);
                        addr107:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           addr108:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                           }
                        }
                     }
                     addr106:
                  }
                  addr109:
                  while(true)
                  {
                     §§pop().width = §§pop();
                     continue loop0;
                  }
               }
               addr97:
            }
            while(true)
            {
               §§push(this.§_-GY§);
               if(!_loc5_)
               {
                  §§push(param2);
                  if(_loc4_)
                  {
                     §§push(600);
                     if(_loc4_)
                     {
                        §§push(_loc3_);
                        if(_loc4_)
                        {
                           §§push(§§pop() / §§pop());
                           if(_loc4_ || this)
                           {
                              addr84:
                              §§push(§§pop() + §§pop());
                              if(!_loc5_)
                              {
                                 §§pop().height = §§pop();
                                 if(_loc4_ || this)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                           }
                           §§goto(addr109);
                        }
                        else
                        {
                           §§goto(addr107);
                        }
                     }
                     else
                     {
                        §§goto(addr106);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr84);
               }
               else
               {
                  §§goto(addr97);
               }
            }
            return;
         }
         §§goto(addr32);
      }
   }
}
