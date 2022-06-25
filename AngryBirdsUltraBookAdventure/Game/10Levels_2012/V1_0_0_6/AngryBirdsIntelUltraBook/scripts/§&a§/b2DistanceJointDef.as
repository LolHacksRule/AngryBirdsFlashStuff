package §&a§
{
   import §#V§.b2Body;
   import §3!m§.b2internal;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §4!%§:b2Vec2;
      
      public var §=!I§:b2Vec2;
      
      public var length:Number;
      
      public var §4p§:Number;
      
      public var §2=§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§4!%§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§=!I§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     type = b2Joint.§&!D§;
                     while(!_loc1_)
                     {
                        continue loop0;
                        while(_loc2_ || _loc1_)
                        {
                           continue loop1;
                           this.§4p§ = 0;
                           do
                           {
                              this.§2=§ = 0;
                           }
                           while(!_loc2_);
                           
                           if(_loc2_)
                           {
                              return;
                              addr47:
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public function §'K§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            §0w§ = param1;
            while(true)
            {
               §^2§ = param2;
               loop1:
               for(; _loc8_ || param1; while(true)
               {
                  this.§=!I§.SetV(§^2§.GetLocalPoint(param4));
                  if(_loc7_ && param1)
                  {
                     continue;
                  }
                  if(_loc7_ && param2)
                  {
                     continue loop1;
                  }
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr43);
               },§§push(param4.x),if(!_loc7_)
               {
                  §§push(§§pop() - param3.x);
                  if(_loc8_ || param1)
                  {
                     §§push(Number(§§pop()));
                  }
               },var _loc5_:* = §§pop(),§§push(param4.y),if(_loc8_ || param2)
               {
                  §§push(§§pop() - param3.y);
                  if(!(_loc7_ && param1))
                  {
                     addr112:
                     §§push(Number(§§pop()));
                  }
                  var _loc6_:* = §§pop();
                  if(!_loc7_)
                  {
                     this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                     do
                     {
                        this.§4p§ = 0;
                        do
                        {
                           this.§2=§ = 0;
                        }
                        while(_loc7_ && this);
                        
                     }
                     while(_loc7_ && this);
                     
                  }
                  return;
               },§§goto(addr112))
               {
                  while(true)
                  {
                     this.§4!%§.SetV(§0w§.GetLocalPoint(param3));
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr50);
      }
   }
}
