package §4m§
{
   import §%!0§.§,4§;
   import §7t§.§7a§;
   import §;" §.§5_§;
   
   public class §?Y§ extends §9g§
   {
       
      
      private var §9n§:Vector.<§7a§>;
      
      public function §?Y§(param1:§,4§, param2:XML)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:XML = null;
         var _loc4_:§7a§ = null;
         if(_loc7_)
         {
            this.§9n§ = new Vector.<§7a§>();
            if(!(_loc8_ && _loc3_))
            {
               addr37:
               super(param1,param2);
            }
            for each(_loc3_ in param2.object)
            {
               if(!_loc8_)
               {
                  if(_loc3_.toString() == "ground")
                  {
                     addr70:
                     _loc4_ = §7a§.§^!g§(param1.objects.getObject(0));
                     if(_loc8_ && param1)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     _loc4_ = §5_§.§<!v§(_loc3_.toString(),param1.objects);
                  }
                  this.§9n§.push(_loc4_);
                  continue;
               }
               §§goto(addr70);
            }
            return;
         }
         §§goto(addr37);
      }
      
      override public function update(param1:§,4§) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§7a§ = null;
         if(!_loc7_)
         {
            if(this.§9n§.length == 0)
            {
               if(!_loc7_)
               {
                  §§goto(addr28);
               }
            }
            var _loc2_:Vector.<§7a§> = new Vector.<§7a§>();
            if(!_loc7_)
            {
               §5_§.§<!i§(this.§9n§[0],_loc2_,param1.objects);
            }
            var _loc4_:int = 0;
            var _loc5_:* = this.§9n§;
            while(true)
            {
               for each(_loc3_ in _loc5_)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  if(_loc2_.indexOf(_loc3_) == -1)
                  {
                     if(_loc6_ || _loc2_)
                     {
                        break;
                     }
                  }
               }
               return true;
            }
            return false;
         }
         addr28:
         return true;
      }
      
      override public function isObjectNeeded(param1:§7a§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§9n§.indexOf(param1) != -1)
            {
               if(!(_loc3_ && param1))
               {
                  addr51:
                  §§push(true);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr55:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr55);
         }
         §§goto(addr51);
      }
   }
}
