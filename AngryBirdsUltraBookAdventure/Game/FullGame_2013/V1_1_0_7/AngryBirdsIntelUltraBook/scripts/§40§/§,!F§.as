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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super();
            if(!_loc2_)
            {
               addChild(this.§<!A§ = new Sprite());
               if(!_loc2_)
               {
                  addr40:
                  this.§<!A§.addChild(this.§"w§ = new Sprite());
                  if(_loc3_ || _loc2_)
                  {
                     this.§69§ = new § O§(2,2,0);
                     loop7:
                     while(true)
                     {
                        §§push(this.§69§);
                        addr137:
                        while(true)
                        {
                           §§push(§,!s§.§!"#§);
                           loop5:
                           while(true)
                           {
                              §§pop().width = §§pop();
                              addr140:
                              while(true)
                              {
                                 if(_loc2_ && this)
                                 {
                                    continue loop7;
                                 }
                                 §§push(this.§69§);
                                 while(true)
                                 {
                                    §§push(§,!s§.§8p§);
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       continue loop5;
                                    }
                                    §§pop().height = §§pop();
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     addChild(this.§69§);
                     addr107:
                     while(_loc2_)
                     {
                        §§goto(addr140);
                     }
                     §§goto(addr132);
                  }
                  addr133:
               }
               while(true)
               {
                  §§push(this.§69§);
                  if(_loc3_ || _loc1_)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        §§pop().alpha = 0.5;
                        if(!_loc2_)
                        {
                           if(_loc3_ || _loc1_)
                           {
                              break;
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr137);
                  }
                  §§goto(addr113);
               }
               return;
               addr101:
            }
            §§goto(addr40);
         }
         §§goto(addr101);
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
         if(_loc4_ || param2)
         {
            §§push(§§pop() / this.§69§.height);
            if(_loc4_ || this)
            {
               addr37:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && this))
            {
               §§push(this.§69§);
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
            §§goto(addr121);
         }
         §§goto(addr37);
      }
   }
}
