package §,§
{
   import §^a§.§ !'§;
   import §^a§.DisplayObject;
   import §^a§.Sprite;
   import §`h§.§@!Z§;
   
   public class §1!D§ extends Sprite
   {
       
      
      protected var §0!C§:Sprite;
      
      protected var §"'§:DisplayObject;
      
      protected var §"!2§:Sprite;
      
      public function §1!D§()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            if(_loc3_ || _loc2_)
            {
               addr28:
               addChild(this.§"!2§ = new Sprite());
               if(_loc3_)
               {
                  this.§"!2§.addChild(this.§0!C§ = new Sprite());
                  if(_loc3_ || this)
                  {
                     this.§"'§ = new § !'§(2,2,0);
                     loop5:
                     while(true)
                     {
                        §§push(this.§"'§);
                        loop6:
                        while(true)
                        {
                           §§push(§@!Z§.§?!L§);
                           addr129:
                           addr132:
                           while(true)
                           {
                              §§pop().width = §§pop();
                              addr130:
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop5;
                           }
                           while(true)
                           {
                              §§push(this.§"'§);
                              while(true)
                              {
                                 §§push(§@!Z§.§"r§);
                                 if(!(_loc3_ || this))
                                 {
                                    break;
                                 }
                                 §§pop().height = §§pop();
                                 addr109:
                                 §§push(this.§"'§);
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 addr78:
                                 if(!(_loc3_ || this))
                                 {
                                    continue loop6;
                                 }
                                 §§pop().alpha = 0.5;
                                 if(_loc2_)
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§goto(addr109);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             addChild(this.§"'§);
                                             continue loop3;
                                          }
                                          addr123:
                                       }
                                    }
                                    continue loop6;
                                 }
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    return;
                                    addr96:
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr129);
                              §§goto(addr132);
                           }
                        }
                     }
                  }
                  §§goto(addr123);
               }
               §§goto(addr96);
            }
            §§goto(addr132);
         }
         §§goto(addr28);
      }
      
      public function get §%P§() : Sprite
      {
         return this.§0!C§;
      }
      
      public function get §,%§() : DisplayObject
      {
         return this.§"'§;
      }
      
      public function get §<!#§() : Sprite
      {
         return this.§"!2§;
      }
      
      public function §%x§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§"'§.width);
         if(!(_loc5_ && this))
         {
            §§push(§§pop() / this.§"'§.height);
            if(_loc4_ || param2)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || this)
         {
            §§push(this.§"'§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr125:
               while(true)
               {
                  §§push(600);
                  addr126:
                  while(true)
                  {
                     §§push(_loc3_);
                     addr127:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        addr128:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr129:
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
   }
}
