package §+#$§
{
   import §4!$§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §@"g§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §-"`§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.filter = new b2FilterData();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.shape = null;
                  while(true)
                  {
                     this.§@"g§ = null;
                     addr139:
                     while(!_loc2_)
                     {
                        continue loop1;
                     }
                  }
               }
               loop12:
               while(true)
               {
                  if(_loc2_ && _loc1_)
                  {
                     continue loop0;
                  }
                  addr102:
                  §§push(this.filter);
                  if(!(_loc2_ && this))
                  {
                     if(_loc1_)
                     {
                        §§push(0);
                        if(!(_loc2_ && this))
                        {
                           continue;
                        }
                        addr107:
                        while(!(_loc2_ && _loc2_))
                        {
                           §§pop().§8"A§ = §§pop();
                           continue loop12;
                        }
                        while(true)
                        {
                           §§pop().§=#0§ = §§pop();
                           addr108:
                           addr134:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 addr110:
                                 if(_loc2_ && _loc2_)
                                 {
                                    break;
                                 }
                                 §§push(this.filter);
                                 while(true)
                                 {
                                    §§goto(addr87);
                                    §§goto(addr102);
                                 }
                              }
                              addr122:
                              while(!_loc2_)
                              {
                                 §§push(this.filter);
                                 break loop12;
                              }
                              §§goto(addr139);
                           }
                           while(true)
                           {
                              this.restitution = 0;
                              addr129:
                              while(true)
                              {
                                 this.density = 0;
                                 §§goto(addr122);
                              }
                              §§goto(addr110);
                           }
                        }
                        addr87:
                     }
                     break;
                  }
                  §§goto(addr86);
               }
               while(true)
               {
                  §§goto(addr107);
               }
            }
         }
         §§goto(addr134);
      }
   }
}
