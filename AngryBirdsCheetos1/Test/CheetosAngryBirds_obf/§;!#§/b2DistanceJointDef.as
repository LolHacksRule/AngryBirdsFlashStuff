package §;!#§
{
   import § o§.b2Body;
   import §"0§.b2internal;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §!!U§:b2Vec2;
      
      public var §"!'§:b2Vec2;
      
      public var length:Number;
      
      public var §7!=§:Number;
      
      public var §'m§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§!!U§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.§"!'§ = new b2Vec2();
            addr105:
            while(true)
            {
               super();
               continue loop0;
            }
         }
      }
      
      public function §#!O§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            §-'§ = param1;
            while(true)
            {
               §<!L§ = param2;
               addr52:
               loop1:
               while(true)
               {
                  addr40:
                  while(true)
                  {
                     this.§!!U§.SetV(§-'§.GetLocalPoint(param3));
                     continue loop1;
                  }
               }
               addr31:
               if(!(_loc8_ || param2))
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr40);
               }
               addr57:
               §§push(param4.x);
               if(!_loc7_)
               {
                  §§push(§§pop() - param3.x);
                  if(_loc8_ || param1)
                  {
                     addr81:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param4.y);
                  if(!_loc7_)
                  {
                     §§push(§§pop() - param3.y);
                     if(_loc8_ || param2)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc6_:* = §§pop();
                  if(_loc8_ || this)
                  {
                     this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                     while(true)
                     {
                        this.§7!=§ = 0;
                        loop5:
                        while(_loc8_ || this)
                        {
                           while(true)
                           {
                              this.§'m§ = 0;
                              if(_loc8_)
                              {
                                 break;
                              }
                              continue loop5;
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr129);
               }
               §§goto(addr81);
            }
         }
         while(true)
         {
            this.§"!'§.SetV(§<!L§.GetLocalPoint(param4));
            if(_loc7_)
            {
               continue;
            }
            if(_loc8_)
            {
               §§goto(addr31);
            }
            §§goto(addr52);
         }
         §§goto(addr57);
      }
   }
}
