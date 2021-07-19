package §69§
{
   public class §>!b§
   {
       
      
      protected var §3!?§:String;
      
      protected var §<C§:Number;
      
      protected var §8"2§:Number;
      
      protected var §;O§:Boolean;
      
      protected var §[!T§:Number;
      
      protected var §8"[§:Number;
      
      protected var §4"%§:Boolean;
      
      protected var §3" §:Boolean;
      
      protected var §9"l§:Vector.<§`"-§>;
      
      protected var §"!a§:Boolean;
      
      protected var §]H§:String;
      
      public function §>!b§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!(_loc11_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.§3!?§ = param1;
               loop1:
               while(true)
               {
                  this.§<C§ = param4;
                  loop2:
                  while(true)
                  {
                     this.§4"%§ = param7;
                     while(_loc12_)
                     {
                        §§push(this);
                        if(!(_loc11_ && param3))
                        {
                           §§push(param3);
                           if(_loc12_)
                           {
                              if(§§pop() != 0)
                              {
                                 addr136:
                                 §§push(param3);
                                 if(_loc12_)
                                 {
                                    addr139:
                                    §§push(Number(§§pop()));
                                    if(_loc11_)
                                    {
                                    }
                                    addr145:
                                    §§pop().§8"2§ = §§pop();
                                    while(true)
                                    {
                                       this.§;O§ = param8;
                                       while(true)
                                       {
                                          this.§[!T§ = param5;
                                          addr116:
                                          loop6:
                                          while(true)
                                          {
                                             this.§8"[§ = param6;
                                             addr111:
                                             while(true)
                                             {
                                                this.§"!a§ = param9;
                                                continue loop6;
                                             }
                                          }
                                          addr47:
                                          addr68:
                                          return;
                                          loop9:
                                          while(_loc12_ || param2)
                                          {
                                             this.§3" § = param10;
                                             while(true)
                                             {
                                                if(!(_loc11_ && param1))
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr111);
                                                   }
                                                   break;
                                                }
                                                continue loop9;
                                             }
                                             §§goto(addr90);
                                          }
                                       }
                                       if(_loc11_ && param3)
                                       {
                                          continue;
                                       }
                                       if(_loc11_)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr47);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(Number(1));
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr136);
                        if(!(_loc12_ || this))
                        {
                           continue;
                        }
                        if(!_loc12_)
                        {
                           continue loop2;
                        }
                        this.§]H§ = param2;
                        §§goto(addr68);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr116);
      }
      
      public function get spriteName() : String
      {
         return this.§3!?§;
      }
      
      public function get color() : String
      {
         return this.§]H§;
      }
      
      public function get speed() : Number
      {
         return this.§<C§;
      }
      
      public function get scale() : Number
      {
         return this.§8"2§;
      }
      
      public function get xOffset() : Number
      {
         return this.§[!T§;
      }
      
      public function get yOffset() : Number
      {
         return this.§8"[§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§;O§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§3" §;
      }
      
      public function get foreground() : Boolean
      {
         return this.§4"%§;
      }
      
      public function get optional() : Boolean
      {
         return this.§"!a§;
      }
      
      public function get §package§() : int
      {
         return this.§9"l§.length;
      }
      
      public function §+"_§(param1:int) : §`"-§
      {
         return this.§9"l§[param1];
      }
      
      public function §+#R§(param1:XMLList) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:§`"-§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §`"-§();
            if(_loc7_)
            {
               _loc3_.id = _loc2_.@id.toString();
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc7_)
                  {
                     §§push(Number(Number(_loc2_.@x)));
                     if(!(_loc6_ && this))
                     {
                        if(!§§pop())
                        {
                           if(!(_loc6_ && this))
                           {
                              addr253:
                              §§pop();
                              §§push(Number(0));
                           }
                        }
                        §§pop().x = §§pop();
                        continue;
                     }
                  }
                  §§goto(addr253);
               }
            }
            §§goto(addr147);
         }
      }
   }
}
