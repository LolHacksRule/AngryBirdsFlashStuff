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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            super();
            if(_loc3_)
            {
               addChild(this.§1!`§ = new Sprite());
               if(!_loc2_)
               {
                  this.§1!`§.addChild(this.§#!+§ = new Sprite());
                  if(!_loc2_)
                  {
                     this.§]r§ = new §%!g§(2,2,0);
                     loop5:
                     while(true)
                     {
                        §§push(this.§]r§);
                        loop4:
                        while(true)
                        {
                           §§push(§ _§.§[o§);
                           loop3:
                           while(true)
                           {
                              §§pop().width = §§pop();
                              addr130:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop5;
                                 }
                                 §§push(this.§]r§);
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(§ _§.§-S§);
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                                 §§pop().height = §§pop();
                                 addChild(this.§]r§);
                                 continue loop3;
                              }
                           }
                        }
                     }
                     addr63:
                  }
                  while(true)
                  {
                     §§push(this.§]r§);
                     if(!(_loc2_ && this))
                     {
                        §§pop().alpha = 0.5;
                        if(_loc2_ && this)
                        {
                           continue;
                        }
                        if(!(_loc2_ && _loc3_))
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr116);
                  }
                  return;
                  addr96:
               }
               §§goto(addr63);
            }
         }
         §§goto(addr96);
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
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§]r§.width);
         if(!_loc5_)
         {
            §§push(§§pop() / this.§]r§.height);
            if(_loc4_ || param1)
            {
               addr32:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || this)
            {
               §§push(this.§]r§);
               loop0:
               while(true)
               {
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§push(600);
                     while(true)
                     {
                        §§push(_loc3_);
                        addr107:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           addr108:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                           }
                        }
                     }
                     addr106:
                  }
                  addr109:
                  while(true)
                  {
                     §§pop().width = §§pop();
                     continue loop0;
                  }
               }
            }
            §§goto(addr99);
         }
         §§goto(addr32);
      }
   }
}
