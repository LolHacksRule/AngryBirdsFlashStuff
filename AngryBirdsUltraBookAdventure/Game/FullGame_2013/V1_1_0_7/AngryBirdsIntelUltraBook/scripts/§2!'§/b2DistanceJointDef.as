package §2!'§
{
   import §#I§.b2Body;
   import §&H§.b2Vec2;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §'G§:b2Vec2;
      
      public var §true§:b2Vec2;
      
      public var length:Number;
      
      public var §'S§:Number;
      
      public var §&!u§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§'G§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§true§ = new b2Vec2();
               addr101:
               while(true)
               {
                  super();
                  addr95:
                  while(true)
                  {
                     type = b2Joint.§8-§;
                     addr37:
                     if(_loc2_)
                     {
                        return;
                        addr49:
                     }
                  }
               }
               while(true)
               {
                  if(!(_loc1_ && this))
                  {
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr95);
            }
         }
         §§goto(addr91);
      }
      
      public function §`!D§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            §19§ = param1;
            while(true)
            {
               §"@§ = param2;
               addr44:
               loop1:
               while(_loc7_)
               {
                  while(true)
                  {
                     this.§'G§.SetV(§19§.GetLocalPoint(param3));
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§true§.SetV(§"@§.GetLocalPoint(param4));
            if(!_loc7_)
            {
               continue;
            }
            if(!_loc8_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr44);
            }
            §§goto(addr32);
         }
         §§push(param4.x);
         if(!(_loc8_ && param3))
         {
            §§push(§§pop() - param3.x);
            if(!(_loc8_ && param3))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param4.y);
         if(!(_loc8_ && this))
         {
            §§push(§§pop() - param3.y);
            if(!(_loc8_ && this))
            {
               addr101:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(_loc7_)
            {
               this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
               while(true)
               {
                  this.§'S§ = 0;
                  §§goto(addr138);
               }
            }
            addr138:
            while(true)
            {
               this.§&!u§ = 0;
               if(!_loc8_)
               {
                  if(_loc7_ || param2)
                  {
                     break;
                  }
                  continue loop4;
               }
            }
            return;
         }
         §§goto(addr101);
      }
   }
}
