package §5!V§
{
   import §%c§.§=!X§;
   import §default§.DisplayObject;
   import §default§.Sprite;
   import §default§.§^$§;
   
   public class §^!c§ extends Sprite
   {
       
      
      protected var §`!5§:Sprite;
      
      protected var §@"-§:DisplayObject;
      
      protected var §0W§:Sprite;
      
      public function §^!c§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            super();
            if(_loc2_ || _loc3_)
            {
               addChild(this.§0W§ = new Sprite());
               if(!(_loc3_ && _loc2_))
               {
                  this.§0W§.addChild(this.§`!5§ = new Sprite());
                  if(_loc2_ || _loc2_)
                  {
                     this.§@"-§ = new §^$§(2,2,0);
                     loop0:
                     while(true)
                     {
                        §§push(this.§@"-§);
                        addr133:
                        while(true)
                        {
                           §§push(§=!X§.§^!N§);
                           addr135:
                           while(true)
                           {
                              §§pop().width = §§pop();
                           }
                           addr87:
                           if(_loc3_ && _loc3_)
                           {
                              continue;
                           }
                           §§pop().alpha = 0.5;
                           if(_loc3_)
                           {
                              while(_loc2_ || this)
                              {
                                 while(true)
                                 {
                                    §§push(this.§@"-§);
                                    if(!_loc3_)
                                    {
                                       §§goto(addr87);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(§=!X§.§5!P§);
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          §§pop().height = §§pop();
                                          continue loop0;
                                       }
                                       §§goto(addr135);
                                       addr117:
                                    }
                                 }
                                 return;
                              }
                              while(true)
                              {
                                 §§goto(addr117);
                              }
                              addr106:
                              addr146:
                           }
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           §§goto(addr100);
                        }
                     }
                  }
                  §§goto(addr146);
               }
               §§goto(addr113);
            }
            §§goto(addr129);
         }
         §§goto(addr100);
      }
      
      public function get §&e§() : Sprite
      {
         return this.§`!5§;
      }
      
      public function get §-"3§() : DisplayObject
      {
         return this.§@"-§;
      }
      
      public function get §8<§() : Sprite
      {
         return this.§0W§;
      }
      
      public function §""5§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§@"-§.width);
         if(_loc4_)
         {
            §§push(§§pop() / this.§@"-§.height);
            if(!_loc5_)
            {
               addr27:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && param2))
            {
               §§push(this.§@"-§);
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
            §§goto(addr101);
         }
         §§goto(addr27);
      }
   }
}
