package §%"$§
{
   import §5!V§.§!w§;
   import §7r§.§=q§;
   import §8" §.§`8§;
   
   public class §[5§ extends §[!0§
   {
       
      
      private var §84§:Vector.<§=q§>;
      
      public function §[5§(param1:§!w§, param2:XML)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:XML = null;
         var _loc4_:§=q§ = null;
         if(_loc7_ || param1)
         {
            this.§84§ = new Vector.<§=q§>();
            if(_loc7_)
            {
               addr37:
               super(param1,param2);
            }
            for each(_loc3_ in param2.object)
            {
               if(!(_loc8_ && this))
               {
                  if(_loc3_.toString() == "ground")
                  {
                     addr75:
                     _loc4_ = §=q§.§0"§(param1.objects.getObject(0));
                     if(_loc8_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     _loc4_ = §`8§.§"!h§(_loc3_.toString(),param1.objects);
                  }
                  this.§84§.push(_loc4_);
                  continue;
               }
               §§goto(addr75);
            }
            return;
         }
         §§goto(addr37);
      }
      
      override public function update(param1:§!w§) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§=q§ = null;
         if(!(_loc7_ && param1))
         {
            if(this.§84§.length == 0)
            {
               if(!(_loc7_ && this))
               {
                  §§goto(addr38);
               }
            }
            var _loc2_:Vector.<§=q§> = new Vector.<§=q§>();
            if(!_loc7_)
            {
               §`8§.§]+§(this.§84§[0],_loc2_,param1.objects);
            }
            for each(_loc3_ in this.§84§)
            {
               if(_loc6_)
               {
                  if(_loc2_.indexOf(_loc3_) == -1)
                  {
                     if(_loc6_)
                     {
                        return false;
                     }
                  }
               }
            }
            return true;
         }
         addr38:
         return true;
      }
      
      override public function isObjectNeeded(param1:§=q§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§84§.indexOf(param1) != -1)
            {
               if(_loc2_ || param1)
               {
                  §§push(true);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr60:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr60);
      }
   }
}
