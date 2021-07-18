package §"d§
{
   import §3!R§.b2Body;
   import §6A§.b2Vec2;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §@b§:b2Vec2;
      
      public var §=i§:b2Vec2;
      
      public var §^>§:b2Vec2;
      
      public var §3L§:Boolean;
      
      public var §<T§:Number;
      
      public var §[g§:Number;
      
      public var §;`§:Boolean;
      
      public var include:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§@b§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§=i§ = new b2Vec2();
               while(true)
               {
                  this.§^>§ = new b2Vec2();
                  while(!(_loc1_ && _loc1_))
                  {
                     continue loop0;
                     loop9:
                     while(_loc2_ || this)
                     {
                        this.include = 0;
                        loop10:
                        while(_loc2_ || _loc2_)
                        {
                           this.motorSpeed = 0;
                           if(_loc1_)
                           {
                              continue;
                           }
                           if(_loc1_)
                           {
                              continue loop9;
                           }
                           addr37:
                           if(_loc1_)
                           {
                              while(true)
                              {
                                 this.§[g§ = 0;
                                 break loop10;
                                 §§goto(addr37);
                              }
                              addr97:
                           }
                           addr39:
                           if(_loc2_ || _loc2_)
                           {
                              addr46:
                              if(_loc2_ || _loc1_)
                              {
                                 return;
                              }
                              addr143:
                              while(true)
                              {
                                 super();
                                 addr137:
                                 while(true)
                                 {
                                    type = b2Joint.§6d§;
                                    addr133:
                                    while(true)
                                    {
                                       this.§^>§.Set(1,0);
                                    }
                                 }
                                 §§goto(addr46);
                              }
                           }
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    this.§3L§ = false;
                                    break loop9;
                                 }
                                 §§goto(addr137);
                              }
                              break;
                              §§goto(addr39);
                           }
                           §§goto(addr133);
                        }
                        while(true)
                        {
                           this.§;`§ = false;
                           continue loop9;
                           §§goto(addr58);
                        }
                        addr58:
                     }
                  }
               }
            }
         }
         §§goto(addr143);
      }
      
      public function §';§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §&]§ = param1;
         }
         do
         {
            §+0§ = param2;
            do
            {
               this.§@b§ = §&]§.GetLocalPoint(param3);
               do
               {
                  this.§=i§ = §+0§.GetLocalPoint(param3);
                  do
                  {
                     this.§^>§ = §&]§.GetLocalVector(param4);
                  }
                  while(_loc6_ && param2);
                  
               }
               while(_loc6_);
               
            }
            while(_loc6_ && this);
            
         }
         while(_loc6_ && param3);
         
      }
   }
}
