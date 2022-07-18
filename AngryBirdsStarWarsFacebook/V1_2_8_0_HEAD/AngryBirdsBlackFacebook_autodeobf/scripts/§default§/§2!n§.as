package §default§
{
   import §]!"§.§+"d§;
   import §]"U§.§ !X§;
   
   public class §2!n§
   {
       
      
      public var data;
      
      public function §2!n§(param1:String, param2:§4>§, param3:§+"d§, param4:§ !X§, param5:Boolean)
      {
         super();
         var _loc6_:* = param1;
         _loc6_ = param4.§4!'§(_loc6_);
         switch(param1.charAt(0))
         {
            case "(":
               _loc6_ = _loc6_.slice(1,_loc6_.length - 1);
               _loc6_ = param2.§else §(_loc6_,null,true);
               break;
            case "<":
               _loc6_ = new XML(_loc6_);
         }
         if(_loc6_ is String)
         {
            if(_loc6_ == "false")
            {
               _loc6_ = false;
            }
            else if(_loc6_ == "true")
            {
               _loc6_ = true;
            }
            try
            {
               _loc6_ = param3.§]#9§([_loc6_])[0];
            }
            catch(e:Error)
            {
            }
         }
         this.data = _loc6_;
      }
      
      public function toString() : String
      {
         return this.data.toString();
      }
   }
}
