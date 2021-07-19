package §>z§
{
   public class §5!?§
   {
       
      
      protected var §5!7§:String;
      
      protected var §6J§:Number;
      
      protected var §2c§:Number;
      
      protected var §"§:Boolean;
      
      protected var §1!<§:Number;
      
      protected var §else§:Number;
      
      protected var §[5§:Boolean;
      
      protected var §'_§:Boolean;
      
      protected var §1!;§:Vector.<§#U§>;
      
      protected var §80§:Boolean;
      
      protected var §[#§:String;
      
      public function §5!?§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!_loc11_)
         {
            super();
            loop0:
            while(true)
            {
               this.§5!7§ = param1;
               loop1:
               while(true)
               {
                  this.§6J§ = param4;
                  while(true)
                  {
                     this.§[5§ = param7;
                     addr158:
                     while(true)
                     {
                        §§push(this);
                        if(_loc12_)
                        {
                           §§push(param3);
                           if(_loc12_ || param2)
                           {
                              if(§§pop() != 0)
                              {
                                 addr133:
                                 §§push(param3);
                                 if(_loc12_ || this)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc11_ && this))
                                    {
                                       addr149:
                                    }
                                 }
                                 §§goto(addr149);
                              }
                              else
                              {
                                 §§push(Number(1));
                              }
                              §§pop().§2c§ = §§pop();
                              while(true)
                              {
                                 this.§"§ = param8;
                                 loop5:
                                 while(true)
                                 {
                                    this.§1!<§ = param5;
                                    while(true)
                                    {
                                       this.§else§ = param6;
                                       continue loop0;
                                       addr40:
                                       if(!(_loc11_ && param3))
                                       {
                                          if(_loc12_)
                                          {
                                             return;
                                             addr49:
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                              addr153:
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr133);
                     }
                     loop10:
                     while(_loc12_ || this)
                     {
                        this.§'_§ = param10;
                        while(!_loc11_)
                        {
                           if(_loc12_)
                           {
                              continue loop1;
                           }
                           §§goto(addr153);
                           this.§1!;§ = new Vector.<§#U§>();
                           if(!(_loc12_ || this))
                           {
                              continue;
                           }
                           if(!_loc12_)
                           {
                              continue loop10;
                           }
                           §§goto(addr40);
                        }
                        while(true)
                        {
                           if(_loc11_)
                           {
                              continue loop0;
                           }
                           if(!_loc12_)
                           {
                              break;
                           }
                           while(true)
                           {
                              this.§[#§ = param2;
                              continue loop10;
                           }
                           §§goto(addr49);
                        }
                        §§goto(addr158);
                     }
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      public function get §-Q§() : String
      {
         return this.§5!7§;
      }
      
      public function get color() : String
      {
         return this.§[#§;
      }
      
      public function get speed() : Number
      {
         return this.§6J§;
      }
      
      public function get scale() : Number
      {
         return this.§2c§;
      }
      
      public function get xOffset() : Number
      {
         return this.§1!<§;
      }
      
      public function get yOffset() : Number
      {
         return this.§else§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§"§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§'_§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§[5§;
      }
      
      public function get optional() : Boolean
      {
         return this.§80§;
      }
      
      public function get § w§() : int
      {
         return this.§1!;§.length;
      }
      
      public function §2D§(param1:int) : §#U§
      {
         return this.§1!;§[param1];
      }
      
      public function §["%§(param1:XMLList) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:§#U§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §#U§();
            if(!_loc6_)
            {
               _loc3_.id = _loc2_.@id.toString();
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc7_)
                  {
                     §§push(Number(Number(_loc2_.@x)));
                     if(_loc7_ || param1)
                     {
                        if(!§§pop())
                        {
                           if(_loc7_ || _loc2_)
                           {
                              §§pop();
                              addr274:
                              §§push(Number(0));
                           }
                        }
                     }
                     §§pop().x = §§pop();
                     continue;
                  }
                  §§goto(addr274);
               }
            }
            §§goto(addr187);
         }
      }
   }
}
