package §4!<§
{
   import §'!6§.§5T§;
   import §'!6§.DisplayObject;
   import §'!6§.Sprite;
   import §@!"§.§?l§;
   
   public class §?C§ extends Sprite
   {
       
      
      protected var §0!A§:Sprite;
      
      protected var §%"=§:DisplayObject;
      
      protected var §'!2§:Sprite;
      
      public function §?C§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(!(_loc3_ && _loc3_))
            {
               addChild(this.§'!2§ = new Sprite());
               if(_loc2_ || this)
               {
                  this.§'!2§.addChild(this.§0!A§ = new Sprite());
                  if(!(_loc3_ && _loc3_))
                  {
                     this.§%"=§ = new §5T§(2,2,0);
                     while(true)
                     {
                        §§push(this.§%"=§);
                        while(true)
                        {
                           §§push(§?l§.§7!H§);
                           loop2:
                           while(true)
                           {
                              §§pop().width = §§pop();
                              loop3:
                              while(true)
                              {
                                 §§push(this.§%"=§);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§?l§.§<"P§);
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       break;
                                    }
                                    §§pop().height = §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       addChild(this.§%"=§);
                                       while(_loc2_)
                                       {
                                          continue loop4;
                                          §§pop().alpha = 0.5;
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             continue loop5;
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           if(!(_loc2_ || this))
                           {
                              continue;
                           }
                           §§goto(addr94);
                        }
                        if(!(_loc2_ || _loc3_))
                        {
                           continue;
                        }
                        return;
                        addr117:
                     }
                     addr164:
                  }
                  §§goto(addr117);
               }
            }
            §§goto(addr164);
         }
         §§goto(addr135);
      }
      
      public function get §&!6§() : Sprite
      {
         return this.§0!A§;
      }
      
      public function get §4+§() : DisplayObject
      {
         return this.§%"=§;
      }
      
      public function get §0"?§() : Sprite
      {
         return this.§'!2§;
      }
      
      public function §@"?§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§%"=§.width);
         if(!(_loc5_ && this))
         {
            §§push(§§pop() / this.§%"=§.height);
            if(_loc4_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || this)
         {
            §§push(this.§%"=§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr130:
               while(true)
               {
                  §§push(600);
                  addr131:
                  while(true)
                  {
                     §§push(_loc3_);
                     addr132:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        addr133:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr134:
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
            addr129:
         }
         while(true)
         {
            §§push(this.§%"=§);
            if(!(_loc5_ && param1))
            {
               §§push(param2);
               if(!_loc5_)
               {
                  §§push(600);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(_loc3_);
                     if(_loc4_)
                     {
                        §§push(§§pop() / §§pop());
                        if(!(_loc5_ && param1))
                        {
                           addr94:
                           §§push(§§pop() + §§pop());
                           if(!(_loc5_ && param1))
                           {
                              if(_loc4_ || this)
                              {
                                 §§pop().height = §§pop();
                                 if(_loc4_ || this)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              §§goto(addr130);
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr131);
               }
               §§goto(addr94);
            }
            else
            {
               §§goto(addr129);
            }
         }
      }
   }
}
