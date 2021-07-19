package §2d§
{
   public class §+!g§ implements §3!R§
   {
       
      
      private var mName:String;
      
      private var §;#;§:Array;
      
      private var §2!R§:Boolean;
      
      public function §+!g§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;#;§ = [];
            while(true)
            {
               super();
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     this.mName = param1;
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr55);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function §4"p§(param1:String) : §;H§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§;H§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§;#;§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_)
               {
                  break;
               }
               if(_loc2_.name == param1)
               {
                  if(_loc5_ || this)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function §-5§(param1:§;H§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!this.§4"p§(param1.name))
            {
               while(true)
               {
                  this.§;#;§.push(param1);
                  do
                  {
                     this.§2!R§ = false;
                  }
                  while(_loc2_ && _loc3_);
                  
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc2_)
                     {
                        return;
                     }
                     break;
                  }
                  if(_loc3_ || param1)
                  {
                     continue;
                  }
               }
               return;
               addr93:
            }
            param1.dispose();
            §§goto(addr93);
         }
         §§goto(addr85);
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§;H§ = null;
         for each(_loc1_ in this.§;#;§)
         {
            if(_loc5_ || this)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc4_)
         {
            this.§;#;§ = [];
         }
      }
      
      public function § !D§(param1:String) : §%$§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§%$§ = null;
         var _loc3_:* = Number(0);
         while(true)
         {
            if(_loc3_ >= this.§;#;§.length)
            {
               return null;
            }
            _loc2_ = (this.§;#;§[_loc3_] as §;H§).§ !D§(param1);
            if(!(_loc4_ || param1))
            {
               break;
            }
            if(_loc2_ != null)
            {
               if(_loc4_ || param1)
               {
                  break;
               }
            }
            §§push(_loc3_);
            if(_loc4_)
            {
               §§push(§§pop() + 1);
               if(_loc4_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            _loc3_ = §§pop();
         }
         return _loc2_;
      }
      
      public function get §^"A§() : int
      {
         return this.§;#;§.length;
      }
      
      public function §"#B§(param1:int) : §;H§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr131:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr132:
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc2_ && this))
                              {
                                 break;
                              }
                              while(true)
                              {
                                 addr90:
                                 while(true)
                                 {
                                    this.§2!R§ = true;
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr20);
                                    }
                                 }
                              }
                              addr128:
                           }
                           addr49:
                           addr105:
                           while(true)
                           {
                              §§push(this.§2!R§);
                              if(_loc2_ && _loc2_)
                              {
                                 break;
                              }
                              if(_loc2_ && this)
                              {
                                 continue loop2;
                              }
                              if(!§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc2_ && param1)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr88);
                                    §§push(this.§;#;§);
                                 }
                                 §§goto(addr90);
                              }
                              addr20:
                              while(true)
                              {
                                 §§push(this.§;#;§);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    break;
                                 }
                                 addr88:
                                 while(true)
                                 {
                                    §§pop().sortOn("name");
                                    continue loop10;
                                 }
                              }
                              return §§pop()[param1];
                              §§goto(addr128);
                           }
                           while(!_loc2_)
                           {
                              continue loop6;
                              §§goto(addr49);
                           }
                        }
                        return null;
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr48);
      }
   }
}
