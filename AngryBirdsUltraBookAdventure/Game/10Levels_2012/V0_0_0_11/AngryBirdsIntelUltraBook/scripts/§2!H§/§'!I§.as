package §2!H§
{
   import § D§.§]!B§;
   import §6!7§.§3x§;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   
   public class §'!I§ extends Sprite
   {
       
      
      protected var §1c§:Sprite;
      
      protected var §26§:DisplayObject;
      
      protected var §'!k§:Sprite;
      
      public function §'!I§()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            if(!_loc2_)
            {
               addChild(this.§'!k§ = new Sprite());
               if(!_loc2_)
               {
                  this.§'!k§.addChild(this.§1c§ = new Sprite());
                  if(_loc3_)
                  {
                     this.§26§ = new §3x§(2,2,0);
                     addr150:
                     while(true)
                     {
                        §§push(this.§26§);
                        addr138:
                        while(true)
                        {
                           §§push(§]!B§.SCREEN_WIDTH);
                           addr141:
                           while(true)
                           {
                              §§pop().width = §§pop();
                           }
                        }
                     }
                     addr150:
                  }
                  loop0:
                  while(true)
                  {
                     §§push(this.§26§);
                     addr99:
                     loop1:
                     while(true)
                     {
                        §§push(§]!B§.SCREEN_HEIGHT);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§pop().height = §§pop();
                           while(true)
                           {
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue loop0;
                              }
                              if(!(_loc2_ && this))
                              {
                                 addChild(this.§26§);
                                 while(_loc3_)
                                 {
                                    continue loop1;
                                    §§pop().alpha = 0.5;
                                    if(_loc3_ || _loc2_)
                                    {
                                       return;
                                       addr86:
                                    }
                                 }
                                 continue;
                              }
                              §§goto(addr150);
                           }
                           §§goto(addr138);
                        }
                        break;
                     }
                     §§goto(addr141);
                  }
               }
               while(true)
               {
                  §§push(this.§26§);
                  if(_loc3_)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        §§goto(addr77);
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr99);
               }
               §§goto(addr86);
            }
            §§goto(addr150);
         }
         §§goto(addr86);
      }
      
      public function get §`!K§() : Sprite
      {
         return this.§1c§;
      }
      
      public function get §8,§() : DisplayObject
      {
         return this.§26§;
      }
      
      public function get §0x§() : Sprite
      {
         return this.§'!k§;
      }
      
      public function §;0§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§26§.width);
         if(!(_loc5_ && param1))
         {
            §§push(§§pop() / this.§26§.height);
            if(_loc4_ || param1)
            {
               addr37:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || param1)
            {
               §§push(this.§26§);
               loop0:
               while(true)
               {
                  §§push(param1);
                  addr115:
                  while(true)
                  {
                     §§push(600);
                     addr116:
                     while(true)
                     {
                        §§push(_loc3_);
                        addr117:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           addr118:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              addr119:
                              while(true)
                              {
                                 §§pop().width = §§pop();
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr111);
         }
         §§goto(addr37);
      }
   }
}
