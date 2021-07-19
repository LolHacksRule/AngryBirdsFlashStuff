package §9N§
{
   import §!J§.§[&§;
   import §`a§.§?!N§;
   import §`a§.DisplayObject;
   import §`a§.Sprite;
   
   public class §!! § extends Sprite
   {
       
      
      protected var §-N§:Sprite;
      
      protected var §!!2§:DisplayObject;
      
      protected var §#w§:Sprite;
      
      public function §!! §()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               addChild(this.§#w§ = new Sprite());
               if(!_loc3_)
               {
                  this.§#w§.addChild(this.§-N§ = new Sprite());
                  if(!(_loc3_ && _loc3_))
                  {
                     this.§!!2§ = new §?!N§(2,2,0);
                     addr144:
                     loop6:
                     while(true)
                     {
                        §§push(this.§!!2§);
                        addr123:
                        while(true)
                        {
                           §§push(§[&§.§"L§);
                           loop4:
                           while(true)
                           {
                              §§pop().width = §§pop();
                              addr136:
                              while(true)
                              {
                                 §§push(this.§!!2§);
                                 addr112:
                                 while(true)
                                 {
                                    §§push(§[&§.§#S§);
                                    if(_loc3_)
                                    {
                                       continue loop4;
                                    }
                                    §§pop().height = §§pop();
                                    while(_loc3_)
                                    {
                                       continue loop6;
                                    }
                                    addChild(this.§!!2§);
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                     addr144:
                  }
                  §§goto(addr144);
               }
               while(true)
               {
                  §§push(this.§!!2§);
                  if(!(_loc3_ && this))
                  {
                     if(_loc2_ || _loc2_)
                     {
                        §§pop().alpha = 0.5;
                        if(!_loc2_)
                        {
                           continue;
                        }
                        if(_loc2_)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              break;
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr112);
               }
               return;
            }
         }
         §§goto(addr144);
      }
      
      public function get §85§() : Sprite
      {
         return this.§-N§;
      }
      
      public function get §+S§() : DisplayObject
      {
         return this.§!!2§;
      }
      
      public function get §!3§() : Sprite
      {
         return this.§#w§;
      }
      
      public function §'7§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§!!2§.width);
         if(_loc5_ || param2)
         {
            §§push(§§pop() / this.§!!2§.height);
            if(_loc5_ || this)
            {
               addr38:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               §§push(this.§!!2§);
               loop0:
               while(true)
               {
                  §§push(param1);
                  if(_loc5_ || param2)
                  {
                     §§push(600);
                     while(true)
                     {
                        §§push(_loc3_);
                        addr133:
                        addr77:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           addr134:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                           }
                        }
                        §§push(600);
                        if(_loc4_ && param2)
                        {
                           continue;
                        }
                        §§push(_loc3_);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop() / §§pop());
                           if(_loc5_ || param2)
                           {
                              addr102:
                              §§pop().height = §§pop() + §§pop();
                              if(!(_loc4_ && _loc3_))
                              {
                                 return;
                                 addr110:
                              }
                              continue loop0;
                           }
                        }
                        else
                        {
                           §§goto(addr133);
                        }
                        §§goto(addr134);
                     }
                  }
                  addr135:
                  while(true)
                  {
                     §§pop().width = §§pop();
                     continue loop0;
                  }
               }
            }
            §§goto(addr110);
         }
         §§goto(addr38);
      }
   }
}
