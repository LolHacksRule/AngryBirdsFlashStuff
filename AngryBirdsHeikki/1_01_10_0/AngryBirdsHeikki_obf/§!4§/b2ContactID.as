package §!4§
{
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var §`!8§:§%W§;
      
      b2internal var §0k§:uint;
      
      public function b2ContactID()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§`!8§ = new §%W§();
            do
            {
               super();
               do
               {
                  this.§`!8§.§=D§ = this;
               }
               while(_loc2_);
               
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function Set(param1:b2ContactID) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.key = param1.§0k§;
         }
      }
      
      public function Copy() : b2ContactID
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2ContactID = new b2ContactID();
         if(_loc2_ || _loc3_)
         {
            _loc1_.key = this.key;
         }
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§0k§;
      }
      
      public function set key(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§0k§ = param1;
         }
         while(true)
         {
            §§push(this.§`!8§);
            while(true)
            {
               §§push(this.§0k§);
               loop2:
               while(true)
               {
                  §§push(255);
                  while(true)
                  {
                     §§push(§§pop() & §§pop());
                     while(true)
                     {
                        §§pop().§ ?§ = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(this.§`!8§);
                           loop6:
                           while(true)
                           {
                              §§push(this.§0k§);
                              addr163:
                              while(_loc2_)
                              {
                                 §§push(65280);
                                 while(true)
                                 {
                                    §§push(§§pop() & §§pop());
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§push(8);
                                       if(_loc2_)
                                       {
                                          addr178:
                                          §§push(§§pop() >> §§pop());
                                          while(true)
                                          {
                                             §§push(255);
                                          }
                                          addr178:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop() & §§pop());
                                          addr180:
                                          while(true)
                                          {
                                             §§pop().§+S§ = §§pop();
                                             addr181:
                                             while(!_loc3_)
                                             {
                                                §§push(this.§`!8§);
                                                continue loop6;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       addr179:
                                    }
                                    §§goto(addr178);
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
            if(!(_loc2_ || _loc3_))
            {
               continue;
            }
            §§goto(addr157);
         }
      }
   }
}
