package §=;§
{
   import §+!g§.b2internal;
   import §>!L§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §+!f§;
      
      public var §7l§:b2Body;
      
      public var §<H§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
         loop0:
         do
         {
            this.type = b2Joint.§?!>§;
            loop1:
            while(true)
            {
               this.§+!f§ = null;
               do
               {
                  this.§7l§ = null;
                  loop3:
                  do
                  {
                     this.§<H§ = null;
                     while(_loc1_)
                     {
                        this.collideConnected = false;
                        if(!_loc2_)
                        {
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
                  while(!(_loc1_ || this));
                  
               }
               while(_loc2_ && this);
               
               continue loop0;
            }
         }
         while(_loc2_);
         
      }
   }
}
