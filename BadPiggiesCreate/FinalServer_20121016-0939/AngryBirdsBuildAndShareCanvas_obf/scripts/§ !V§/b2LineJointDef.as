package § !V§
{
   import §+S§.b2Body;
   import §2"=§.b2Vec2;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §!2§:b2Vec2;
      
      public var § !c§:b2Vec2;
      
      public var §#"$§:b2Vec2;
      
      public var §4!E§:Boolean;
      
      public var §32§:Number;
      
      public var §[!8§:Number;
      
      public var §7!S§:Boolean;
      
      public var §&E§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§!2§ = new b2Vec2();
            while(true)
            {
               this.§ !c§ = new b2Vec2();
               addr153:
               while(true)
               {
                  this.§#"$§ = new b2Vec2();
               }
            }
            addr158:
         }
         loop2:
         while(true)
         {
            super();
            loop3:
            while(true)
            {
               type = b2Joint.§7!z§;
               loop4:
               while(true)
               {
                  if(!_loc1_)
                  {
                     continue loop2;
                  }
                  if(!_loc2_)
                  {
                     this.§#"$§.Set(1,0);
                     while(true)
                     {
                        this.§4!E§ = false;
                        continue loop4;
                        addr62:
                        if(_loc1_ || this)
                        {
                           continue loop3;
                        }
                     }
                  }
                  else
                  {
                     §§goto(addr158);
                  }
               }
            }
         }
      }
      
      public function §1o§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §@!<§ = param1;
            loop0:
            while(true)
            {
               §3j§ = param2;
               loop1:
               while(true)
               {
                  this.§!2§ = §@!<§.GetLocalPoint(param3);
                  while(true)
                  {
                     this.§ !c§ = §3j§.GetLocalPoint(param3);
                     while(_loc5_)
                     {
                        continue loop1;
                        this.§#"$§ = §@!<§.GetLocalVector(param4);
                        if(_loc5_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
      }
   }
}
