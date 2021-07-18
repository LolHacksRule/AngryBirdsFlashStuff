package §6"1§
{
   import §!"3§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §-!"§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §"m§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.filter = new b2FilterData();
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.shape = null;
                  addr163:
                  while(true)
                  {
                     this.§-!"§ = null;
                     while(true)
                     {
                        this.friction = 0.2;
                        addr129:
                        while(_loc1_ || this)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               addr101:
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               addr108:
               §§push(this.filter);
               if(_loc1_ || this)
               {
                  §§push(0);
                  if(!_loc2_)
                  {
                     §§pop().§+!,§ = §§pop();
                     while(_loc1_)
                     {
                        this.§"m§ = false;
                        if(_loc2_ && _loc1_)
                        {
                           continue;
                        }
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              addr38:
                              if(_loc2_ && _loc2_)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.filter);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(1);
                                       addr113:
                                       while(true)
                                       {
                                          §§pop().§@!1§ = §§pop();
                                          addr114:
                                          while(true)
                                          {
                                             §§push(this.filter);
                                             continue loop7;
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                              return;
                           }
                           §§goto(addr114);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr84);
               }
               §§goto(addr66);
            }
         }
         §§goto(addr124);
      }
   }
}
