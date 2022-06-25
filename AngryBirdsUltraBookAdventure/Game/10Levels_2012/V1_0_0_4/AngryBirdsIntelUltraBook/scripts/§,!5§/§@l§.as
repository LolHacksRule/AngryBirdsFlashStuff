package §,!5§
{
   import §'!9§.§%!g§;
   import §'!9§.DisplayObject;
   import §'!9§.Sprite;
   import §true§.§ _§;
   
   public class §@l§ extends Sprite
   {
       
      
      protected var §#!+§:Sprite;
      
      protected var §]r§:DisplayObject;
      
      protected var §1!`§:Sprite;
      
      public function §@l§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super();
            if(!_loc3_)
            {
               addChild(this.§1!`§ = new Sprite());
               if(!_loc3_)
               {
                  this.§1!`§.addChild(this.§#!+§ = new Sprite());
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§]r§ = new §%!g§(2,2,0);
                     loop7:
                     while(true)
                     {
                        §§push(this.§]r§);
                        addr143:
                        while(true)
                        {
                           §§push(§ _§.§[o§);
                           loop3:
                           while(true)
                           {
                              §§pop().width = §§pop();
                              addr146:
                              addr129:
                              addr130:
                              while(true)
                              {
                                 §§push(this.§]r§);
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
                  addChild(this.§]r§);
                  while(true)
                  {
                     §§push(this.§]r§);
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
      
      public function get §&J§() : Sprite
      {
         return this.§#!+§;
      }
      
      public function get §[g§() : DisplayObject
      {
         return this.§]r§;
      }
      
      public function get §5!4§() : Sprite
      {
         return this.§1!`§;
      }
      
      public function §"o§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§]r§.width);
         if(_loc5_ || param1)
         {
            §§push(§§pop() / this.§]r§.height);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this.§]r§);
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
