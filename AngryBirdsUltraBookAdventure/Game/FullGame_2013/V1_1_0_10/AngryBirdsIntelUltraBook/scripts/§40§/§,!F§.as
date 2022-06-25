package §40§
{
   import §;!y§.§,!s§;
   import §`g§.§ O§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   
   public class §,!F§ extends Sprite
   {
       
      
      protected var §"w§:Sprite;
      
      protected var §69§:DisplayObject;
      
      protected var §<!A§:Sprite;
      
      public function §,!F§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            super();
            if(!_loc3_)
            {
               addChild(this.§<!A§ = new Sprite());
               if(_loc2_)
               {
                  this.§<!A§.addChild(this.§"w§ = new Sprite());
                  if(!(_loc3_ && this))
                  {
                     this.§69§ = new § O§(2,2,0);
                     loop7:
                     while(true)
                     {
                        §§push(this.§69§);
                        addr123:
                        while(true)
                        {
                           §§push(§,!s§.§!"#§);
                           loop4:
                           while(true)
                           {
                              §§pop().width = §§pop();
                              addr126:
                              while(true)
                              {
                                 §§push(this.§69§);
                                 addr114:
                                 while(true)
                                 {
                                    §§push(§,!s§.§8p§);
                                    if(!_loc2_)
                                    {
                                       continue loop4;
                                    }
                                    §§pop().height = §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       addChild(this.§69§);
                                       addr106:
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             continue loop7;
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                     addr134:
                  }
                  while(true)
                  {
                     §§push(this.§69§);
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc3_)
                        {
                           §§pop().alpha = 0.5;
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr114);
                  }
               }
               return;
            }
            §§goto(addr119);
         }
         §§goto(addr134);
      }
      
      public function get §1M§() : Sprite
      {
         return this.§"w§;
      }
      
      public function get §,!n§() : DisplayObject
      {
         return this.§69§;
      }
      
      public function get §75§() : Sprite
      {
         return this.§<!A§;
      }
      
      public function §[8§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§69§.width);
         if(!_loc5_)
         {
            §§push(§§pop() / this.§69§.height);
            if(_loc4_)
            {
               addr27:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               §§push(this.§69§);
               loop0:
               while(true)
               {
                  §§push(param1);
                  if(!_loc5_)
                  {
                     §§push(600);
                     while(true)
                     {
                        §§push(_loc3_);
                        addr117:
                        addr59:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           addr118:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                           }
                        }
                        §§push(600);
                        if(_loc5_ && param1)
                        {
                           continue;
                        }
                        §§push(_loc3_);
                        if(_loc4_ || param2)
                        {
                           §§push(§§pop() / §§pop());
                           if(!(_loc5_ && param2))
                           {
                              addr94:
                              §§push(§§pop() + §§pop());
                              if(!(_loc5_ && this))
                              {
                                 §§pop().height = §§pop();
                                 if(!(_loc5_ && this))
                                 {
                                    return;
                                    addr109:
                                 }
                                 continue loop0;
                              }
                           }
                           else
                           {
                              §§goto(addr118);
                           }
                           while(true)
                           {
                              §§pop().width = §§pop();
                              continue loop0;
                           }
                           addr119:
                        }
                        else
                        {
                           §§goto(addr117);
                        }
                        §§goto(addr118);
                     }
                  }
                  §§goto(addr119);
               }
            }
            §§goto(addr109);
         }
         §§goto(addr27);
      }
   }
}
