package §9"!§
{
   import §1!$§.§!"?§;
   import §1!$§.DisplayObject;
   import §1!$§.Sprite;
   import §]!A§.;
   
   public class §5P§ extends Sprite
   {
       
      
      protected var §9Y§:Sprite;
      
      protected var §^w§:DisplayObject;
      
      protected var §27§:Sprite;
      
      public function §5P§()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(_loc3_)
            {
               addChild(this.§27§ = new Sprite());
               if(!_loc2_)
               {
                  this.§27§.addChild(this.§9Y§ = new Sprite());
                  if(!_loc2_)
                  {
                     this.§^w§ = new §!"?§(2,2,0);
                  }
                  loop0:
                  while(true)
                  {
                     §§push(this.§^w§);
                     loop1:
                     while(true)
                     {
                        §§push(§#6§.§;H§);
                        addr124:
                        addr94:
                        while(true)
                        {
                           §§pop().width = §§pop();
                           continue loop0;
                        }
                        loop6:
                        while(true)
                        {
                           if(!(_loc3_ || this))
                           {
                              continue loop1;
                           }
                           §§push(§#6§.§+P§);
                           if(_loc3_)
                           {
                              §§pop().height = §§pop();
                              while(_loc2_)
                              {
                                 continue loop0;
                              }
                              addChild(this.§^w§);
                              while(true)
                              {
                                 §§push(this.§^w§);
                                 if(_loc2_)
                                 {
                                    continue loop6;
                                 }
                                 §§pop().alpha = 0.5;
                                 if(_loc2_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 if(_loc3_ || _loc2_)
                                 {
                                    break;
                                 }
                                 §§goto(addr116);
                              }
                              addr116:
                              return;
                              addr90:
                           }
                           §§goto(addr124);
                        }
                     }
                  }
               }
               §§goto(addr90);
            }
         }
         §§goto(addr132);
      }
      
      public function get §!0§() : Sprite
      {
         return this.§9Y§;
      }
      
      public function get §>§() : DisplayObject
      {
         return this.§^w§;
      }
      
      public function get §]Y§() : Sprite
      {
         return this.§27§;
      }
      
      public function §!!U§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§^w§.width);
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop() / this.§^w§.height);
            if(!(_loc4_ && param2))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param2)
         {
            §§push(this.§^w§);
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
            addr115:
         }
         while(true)
         {
            §§push(this.§^w§);
            if(_loc5_)
            {
               §§push(param2);
               if(_loc5_ || param2)
               {
                  if(_loc5_)
                  {
                     §§push(600);
                     if(_loc5_)
                     {
                        §§push(_loc3_);
                        if(_loc5_)
                        {
                           §§push(§§pop() / §§pop());
                           if(!(_loc4_ && _loc3_))
                           {
                              addr102:
                              §§push(§§pop() + §§pop());
                              if(!_loc4_)
                              {
                                 §§pop().height = §§pop();
                                 if(!(_loc4_ && param1))
                                 {
                                    break;
                                 }
                                 continue;
                              }
                           }
                           else
                           {
                              §§goto(addr119);
                           }
                           §§goto(addr120);
                        }
                        else
                        {
                           §§goto(addr118);
                        }
                     }
                     else
                     {
                        §§goto(addr117);
                     }
                     §§goto(addr118);
                  }
                  else
                  {
                     §§goto(addr116);
                  }
               }
               §§goto(addr102);
            }
            else
            {
               §§goto(addr115);
            }
         }
      }
   }
}
