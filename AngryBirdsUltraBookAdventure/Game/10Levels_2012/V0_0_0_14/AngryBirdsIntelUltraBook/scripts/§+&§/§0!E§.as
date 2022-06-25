package §+&§
{
   import §5i§.§4!]§;
   import §9E§.§1!w§;
   import §9E§.DisplayObject;
   import §9E§.Sprite;
   
   public class §0!E§ extends Sprite
   {
       
      
      protected var §4!Z§:Sprite;
      
      protected var §^%§:DisplayObject;
      
      protected var §9!E§:Sprite;
      
      public function §0!E§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super();
            if(!_loc3_)
            {
               addChild(this.§9!E§ = new Sprite());
               if(!_loc3_)
               {
                  this.§9!E§.addChild(this.§4!Z§ = new Sprite());
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§^%§ = new §1!w§(2,2,0);
                     loop7:
                     while(true)
                     {
                        §§push(this.§^%§);
                        addr143:
                        while(true)
                        {
                           §§push(§4!]§.§]m§);
                           loop3:
                           while(true)
                           {
                              §§pop().width = §§pop();
                              addr146:
                              addr129:
                              addr130:
                              while(true)
                              {
                                 §§push(this.§^%§);
                                 continue loop3;
                              }
                              §§pop().height = §§pop();
                              while(true)
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop7;
                                 }
                                 §§goto(addr146);
                                 §§goto(addr129);
                              }
                           }
                        }
                     }
                     addr57:
                  }
                  return;
                  addr100:
               }
               while(true)
               {
                  addChild(this.§^%§);
                  while(true)
                  {
                     §§push(this.§^%§);
                     if(_loc2_ || this)
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        §§goto(addr143);
                     }
                     break;
                  }
                  §§goto(addr110);
               }
               §§goto(addr100);
            }
            §§goto(addr57);
         }
         §§goto(addr100);
      }
      
      public function get §,!+§() : Sprite
      {
         return this.§4!Z§;
      }
      
      public function get §6"§() : DisplayObject
      {
         return this.§^%§;
      }
      
      public function get §>!6§() : Sprite
      {
         return this.§9!E§;
      }
      
      public function §'C§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§^%§.width);
         if(_loc5_ || param1)
         {
            §§push(§§pop() / this.§^%§.height);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this.§^%§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc5_ || param1)
               {
                  §§push(600);
                  while(true)
                  {
                     §§push(_loc3_);
                     addr123:
                     addr65:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        addr124:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                        }
                     }
                     §§push(600);
                     if(!(_loc5_ || param1))
                     {
                        continue;
                     }
                     §§push(_loc3_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() / §§pop());
                        if(_loc5_ || param1)
                        {
                           addr85:
                           §§push(§§pop() + §§pop());
                           if(!(_loc4_ && _loc3_))
                           {
                              §§pop().height = §§pop();
                              if(_loc5_ || _loc3_)
                              {
                                 return;
                                 addr110:
                              }
                              continue loop0;
                           }
                        }
                        else
                        {
                           §§goto(addr124);
                        }
                        while(true)
                        {
                           §§pop().width = §§pop();
                           continue loop0;
                        }
                        addr125:
                     }
                     else
                     {
                        §§goto(addr123);
                     }
                     §§goto(addr124);
                  }
               }
               §§goto(addr125);
            }
         }
         §§goto(addr110);
      }
   }
}
