package §[!N§
{
   import § D§.b2Body;
   import §8>§.b2Vec2;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §9!9§:b2Vec2;
      
      public var §^G§:b2Vec2;
      
      public var §!!i§:b2Vec2;
      
      public var §"!8§:Boolean;
      
      public var §#!e§:Number;
      
      public var §5!y§:Number;
      
      public var §;!J§:Boolean;
      
      public var §'&§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§9!9§ = new b2Vec2();
            while(true)
            {
               this.§^G§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§!!i§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     super();
                     addr156:
                     while(true)
                     {
                        type = b2Joint.§"$§;
                        while(true)
                        {
                           this.§!!i§.Set(1,0);
                           addr48:
                           if(_loc1_ || _loc1_)
                           {
                              return;
                           }
                        }
                     }
                     addr115:
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     this.§5!y§ = 0;
                     while(true)
                     {
                        this.§;!J§ = false;
                        continue loop1;
                        addr34:
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        addr41:
                        loop6:
                        while(!_loc2_)
                        {
                           this.§#!e§ = 0;
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr115);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§"!8§ = false;
                                    §§goto(addr41);
                                    continue loop6;
                                 }
                                 addr146:
                              }
                              addr67:
                              if(!(_loc1_ || _loc2_))
                              {
                                 continue;
                              }
                              this.motorSpeed = 0;
                              addr84:
                              if(!(_loc1_ || this))
                              {
                                 addr60:
                                 while(true)
                                 {
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr67);
                                    §§goto(addr84);
                                 }
                                 continue;
                                 addr60:
                              }
                              §§goto(addr34);
                           }
                           continue loop2;
                        }
                        if(_loc1_ || this)
                        {
                           §§goto(addr48);
                        }
                        §§goto(addr156);
                     }
                  }
               }
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               this.§'&§ = 0;
               §§goto(addr60);
            }
         }
         §§goto(addr146);
      }
      
      public function §7R§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §-!O§ = param1;
         }
         loop0:
         while(true)
         {
            §3!u§ = param2;
            while(true)
            {
               this.§9!9§ = §-!O§.GetLocalPoint(param3);
               while(_loc5_)
               {
                  continue loop0;
                  this.§^G§ = §3!u§.GetLocalPoint(param3);
                  do
                  {
                     this.§!!i§ = §-!O§.GetLocalVector(param4);
                  }
                  while(!_loc5_);
                  
                  if(_loc5_ || param1)
                  {
                     return;
                  }
               }
            }
         }
      }
   }
}
