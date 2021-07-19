package §6=§
{
   import flash.utils.getTimer;
   
   public final class §@"c§
   {
       
      
      public var §5"M§:int = 0;
      
      public var timestamp:String = "";
      
      public var text:String = "";
      
      public var §%"T§:int = 0;
      
      public var type:String;
      
      public var tag:String;
      
      public var § p§:Boolean = false;
      
      public var visible:Boolean = true;
      
      public function §@"c§(param1:String, param2:String, param3:String = "Info", param4:String = "")
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.tag = param4;
               while(true)
               {
                  this.text = param1;
                  while(!(_loc5_ && param1))
                  {
                     this.timestamp = param2;
                     while(_loc6_ || this)
                     {
                        continue loop0;
                        this.type = param3;
                        do
                        {
                           this.§5"M§ = getTimer();
                        }
                        while(!(_loc6_ || param1));
                        
                        if(_loc6_ || this)
                        {
                           return;
                           addr53:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public function toString() : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = this.type + ":\t";
         if(!_loc2_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(§§pop() + this.text);
               if(_loc3_ || this)
               {
                  addr58:
                  _loc1_ = §§pop();
                  return _loc1_;
               }
            }
         }
         §§goto(addr58);
      }
   }
}
