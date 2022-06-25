package §1%§
{
   import §,X§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §#!`§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §3!&§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.filter = new b2FilterData();
         }
         while(true)
         {
            super();
            loop1:
            while(true)
            {
               this.shape = null;
               loop2:
               while(true)
               {
                  this.§#!`§ = null;
                  loop3:
                  while(true)
                  {
                     this.friction = 0.2;
                     while(true)
                     {
                        this.restitution = 0;
                        continue loop2;
                        addr98:
                        if(!(_loc2_ || this))
                        {
                           continue;
                        }
                        addr105:
                        §§push(this.filter);
                        if(!_loc1_)
                        {
                           addr57:
                           if(!(_loc1_ && this))
                           {
                              §§push(0);
                              if(!(_loc1_ && _loc1_))
                              {
                                 addr82:
                                 §§pop().§?!<§ = §§pop();
                                 do
                                 {
                                    this.§3!&§ = false;
                                 }
                                 while(_loc1_);
                                 
                                 if(_loc2_)
                                 {
                                    if(_loc1_ && _loc1_)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(this.filter);
                                          addr87:
                                          while(true)
                                          {
                                             §§push(65535);
                                             addr88:
                                             addr110:
                                             while(!(_loc1_ && _loc2_))
                                             {
                                                §§pop().§7f§ = §§pop();
                                             }
                                             while(true)
                                             {
                                                §§pop().§,j§ = §§pop();
                                                continue loop9;
                                             }
                                             §§goto(addr105);
                                          }
                                       }
                                    }
                                    continue loop3;
                                 }
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       while(!_loc1_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop2;
                                       addr116:
                                    }
                                    §§goto(addr98);
                                    §§goto(addr82);
                                 }
                                 continue;
                              }
                              §§goto(addr88);
                           }
                           while(true)
                           {
                              §§goto(addr110);
                              §§goto(addr57);
                           }
                           addr109:
                        }
                        §§goto(addr87);
                     }
                  }
               }
            }
            if(_loc1_ && _loc1_)
            {
               continue;
            }
            this.density = 0;
            §§goto(addr116);
         }
      }
   }
}
