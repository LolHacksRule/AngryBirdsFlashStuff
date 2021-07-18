package §[!8§
{
   import §0!G§.b2Vec2;
   import §2!F§.b2internal;
   import §`j§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §;9§:b2Vec2;
      
      public var §-y§:b2Vec2;
      
      public var length:Number;
      
      public var §!k§:Number;
      
      public var §-C§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§;9§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.§-y§ = new b2Vec2();
            addr90:
            while(true)
            {
               super();
               continue loop0;
            }
         }
      }
      
      public function §>b§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            §8!5§ = param1;
            loop0:
            while(true)
            {
               §0n§ = param2;
               loop1:
               while(true)
               {
                  addr43:
                  while(true)
                  {
                     this.§;9§.SetV(§8!5§.GetLocalPoint(param3));
                     while(_loc8_)
                     {
                        this.§-y§.SetV(§0n§.GetLocalPoint(param4));
                        if(!(_loc7_ && param1))
                        {
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr43);
         }
         §§push(param4.x);
         if(_loc8_)
         {
            §§push(§§pop() - param3.x);
            if(!_loc7_)
            {
               addr81:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param4.y);
            if(!_loc7_)
            {
               §§push(§§pop() - param3.y);
               if(_loc8_)
               {
                  addr92:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               if(_loc8_ || param1)
               {
                  this.length = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                  do
                  {
                     this.§!k§ = 0;
                     do
                     {
                        this.§-C§ = 0;
                     }
                     while(!(_loc8_ || param2));
                     
                  }
                  while(!_loc8_);
                  
               }
               return;
            }
            §§goto(addr92);
         }
         §§goto(addr81);
      }
   }
}
