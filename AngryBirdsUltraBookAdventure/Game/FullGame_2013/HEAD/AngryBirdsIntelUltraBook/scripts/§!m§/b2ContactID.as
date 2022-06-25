package §!m§
{
   import §+!g§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactID
   {
       
      
      public var features:§ 2§;
      
      b2internal var §1o§:uint;
      
      public function b2ContactID()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.features = new § 2§();
            do
            {
               super();
               do
               {
                  this.features.§[m§ = this;
               }
               while(_loc1_);
               
            }
            while(_loc1_);
            
         }
      }
      
      public function Set(param1:b2ContactID) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.key = param1.§1o§;
         }
      }
      
      public function Copy() : b2ContactID
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2ContactID = new b2ContactID();
         if(!_loc3_)
         {
            _loc1_.key = this.key;
         }
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return this.§1o§;
      }
      
      public function set key(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1o§ = param1;
            loop0:
            while(true)
            {
               §§push(this.features);
               while(true)
               {
                  §§push(this.§1o§);
                  while(true)
                  {
                     §§push(255);
                     while(true)
                     {
                        §§push(§§pop() & §§pop());
                        while(true)
                        {
                           §§pop().§2!>§ = §§pop();
                           loop5:
                           while(_loc2_)
                           {
                              §§push(this.features);
                              loop6:
                              while(true)
                              {
                                 §§push(this.§1o§);
                                 addr192:
                                 while(true)
                                 {
                                    §§push(65280);
                                    addr193:
                                    while(true)
                                    {
                                       §§push(§§pop() & §§pop());
                                       addr194:
                                       while(true)
                                       {
                                          §§push(8);
                                          addr195:
                                          while(true)
                                          {
                                             §§push(§§pop() >> §§pop());
                                             addr196:
                                             while(true)
                                             {
                                                §§push(255);
                                                addr197:
                                                while(true)
                                                {
                                                   §§push(§§pop() & §§pop());
                                                   addr198:
                                                   while(true)
                                                   {
                                                      §§pop().§2N§ = §§pop();
                                                      addr199:
                                                      while(_loc2_ || param1)
                                                      {
                                                         §§push(this.features);
                                                         continue loop6;
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr108);
      }
   }
}
