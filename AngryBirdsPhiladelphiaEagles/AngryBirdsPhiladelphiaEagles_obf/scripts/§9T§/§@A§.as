package §9T§
{
   import § N§.§6!O§;
   import § N§.DisplayObject;
   import § N§.Sprite;
   import §8!B§.§#! §;
   
   public class §@A§ extends Sprite
   {
       
      
      protected var §5'§:Sprite;
      
      protected var §`&§:DisplayObject;
      
      protected var §^!K§:Sprite;
      
      public function §@A§()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super();
            if(_loc3_ || _loc3_)
            {
               addChild(this.§^!K§ = new Sprite());
               if(!(_loc2_ && _loc3_))
               {
                  this.§^!K§.addChild(this.§5'§ = new Sprite());
                  addr50:
                  if(!(_loc2_ && _loc2_))
                  {
                     this.§`&§ = new §6!O§(2,2,0);
                     while(true)
                     {
                        §§push(this.§`&§);
                        loop1:
                        while(true)
                        {
                           §§push(§#! §.§-p§);
                           loop2:
                           while(true)
                           {
                              §§pop().width = §§pop();
                              loop3:
                              while(true)
                              {
                                 §§push(this.§`&§);
                                 addr124:
                                 while(_loc3_)
                                 {
                                    §§push(§#! §.§5!9§);
                                    if(!(_loc2_ && this))
                                    {
                                       §§pop().height = §§pop();
                                       if(!_loc2_)
                                       {
                                          addChild(this.§`&§);
                                          continue;
                                       }
                                       continue loop3;
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     addr153:
                     addr78:
                  }
                  while(true)
                  {
                     §§push(this.§`&§);
                     if(_loc2_ && this)
                     {
                        break;
                     }
                     §§pop().alpha = 0.5;
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        return;
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr124);
               }
            }
            §§goto(addr78);
         }
         §§goto(addr50);
      }
      
      public function get §'t§() : Sprite
      {
         return this.§5'§;
      }
      
      public function get §'Z§() : DisplayObject
      {
         return this.§`&§;
      }
      
      public function get §1!$§() : Sprite
      {
         return this.§^!K§;
      }
      
      public function §;!B§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§`&§.width);
         if(_loc4_)
         {
            §§push(§§pop() / this.§`&§.height);
            if(!(_loc5_ && this))
            {
               addr32:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || _loc3_)
            {
               §§push(this.§`&§);
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
               addr124:
            }
            while(true)
            {
               §§push(this.§`&§);
               if(!(_loc5_ && param2))
               {
                  §§push(param2);
                  if(_loc4_ || this)
                  {
                     if(_loc4_ || param1)
                     {
                        if(_loc4_)
                        {
                           §§push(600);
                           if(!(_loc5_ && this))
                           {
                              §§push(_loc3_);
                              if(!(_loc5_ && param1))
                              {
                                 §§push(§§pop() / §§pop());
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr118:
                                    §§pop().height = §§pop() + §§pop();
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                              }
                              else
                              {
                                 §§goto(addr127);
                              }
                              §§goto(addr128);
                           }
                           else
                           {
                              §§goto(addr126);
                           }
                        }
                        else
                        {
                           §§goto(addr125);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr118);
               }
               else
               {
                  §§goto(addr124);
               }
            }
            return;
         }
         §§goto(addr32);
      }
   }
}
