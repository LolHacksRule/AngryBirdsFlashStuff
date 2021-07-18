package §%!0§
{
   import §+!-§.§4!O§;
   import §+!-§.DisplayObject;
   import §+!-§.Sprite;
   import §,P§.§'_§;
   
   public class §3!g§ extends Sprite
   {
       
      
      protected var §"!i§:Sprite;
      
      protected var §5!W§:DisplayObject;
      
      protected var §,"§:Sprite;
      
      public function §3!g§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
            if(!_loc3_)
            {
               addChild(this.§,"§ = new Sprite());
               if(!(_loc3_ && this))
               {
                  addr44:
                  this.§,"§.addChild(this.§"!i§ = new Sprite());
                  if(!(_loc3_ && _loc1_))
                  {
                     this.§5!W§ = new §4!O§(2,2,0);
                     loop7:
                     while(true)
                     {
                        §§push(this.§5!W§);
                        addr136:
                        while(true)
                        {
                           §§push(§'_§.§["3§);
                           addr138:
                           loop5:
                           while(true)
                           {
                              §§pop().width = §§pop();
                              addr139:
                              while(true)
                              {
                                 if(_loc3_ && _loc2_)
                                 {
                                    continue loop7;
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                     addr62:
                  }
                  while(true)
                  {
                     §§push(this.§5!W§);
                     while(true)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           §§push(§'_§.§7$§);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr131:
                              §§pop().height = §§pop();
                              while(true)
                              {
                                 addChild(this.§5!W§);
                                 addr109:
                                 §§goto(addr111);
                              }
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr136);
                     }
                  }
               }
               addr111:
               while(_loc3_)
               {
                  §§goto(addr139);
               }
               while(true)
               {
                  §§push(this.§5!W§);
                  if(_loc3_ && _loc2_)
                  {
                     continue loop4;
                  }
                  §§pop().alpha = 0.5;
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!(_loc3_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  §§goto(addr109);
               }
               return;
            }
            §§goto(addr62);
         }
         §§goto(addr44);
      }
      
      public function get §@>§() : Sprite
      {
         return this.§"!i§;
      }
      
      public function get §`V§() : DisplayObject
      {
         return this.§5!W§;
      }
      
      public function get §+h§() : Sprite
      {
         return this.§,"§;
      }
      
      public function §,!n§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§5!W§.width);
         if(!_loc4_)
         {
            §§push(§§pop() / this.§5!W§.height);
            if(!(_loc4_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this.§5!W§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr116:
               while(true)
               {
                  §§push(600);
                  addr117:
                  while(true)
                  {
                     §§push(_loc3_);
                     addr118:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        addr119:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr120:
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
         §§goto(addr102);
      }
   }
}
