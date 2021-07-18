package §0#P§
{
   public class §,"v§ extends §3"V§
   {
       
      
      public var declaredBy:String;
      
      public var returnType:String;
      
      public var params:Vector.<§?!§>;
      
      public function §,"v§(param1:XML)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(_loc6_)
         {
            this.params = new Vector.<§?!§>();
            while(true)
            {
               super();
               addr61:
               while(!_loc5_)
               {
                  name = param1.@name;
                  loop2:
                  while(true)
                  {
                     addr36:
                     while(true)
                     {
                        this.declaredBy = param1.@declaredBy;
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.returnType = param1.@returnType;
            if(!_loc6_)
            {
               continue;
            }
            if(!_loc5_)
            {
               if(_loc6_)
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr61);
               }
               §§goto(addr36);
            }
            §§goto(addr57);
         }
         for each(_loc2_ in param1..parameter)
         {
            if(!_loc5_)
            {
               this.params.push(new §?!§(_loc2_));
            }
         }
      }
   }
}
