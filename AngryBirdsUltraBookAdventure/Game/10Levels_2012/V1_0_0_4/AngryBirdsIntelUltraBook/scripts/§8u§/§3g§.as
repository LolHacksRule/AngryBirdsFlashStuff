package §8u§
{
   public class §3g§
   {
       
      
      protected var §0i§:§9=§;
      
      protected var §`h§:Object;
      
      protected var §3l§:String;
      
      protected var § u§:String;
      
      protected var §&i§:String;
      
      public function §3g§(param1:String, param2:String, param3:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§`h§ = {};
            while(true)
            {
               super();
            }
            addr78:
         }
         loop1:
         while(true)
         {
            this.§&i§ = param3;
            loop2:
            while(true)
            {
               this.§ u§ = param2;
               while(true)
               {
                  if(!(_loc5_ && param1))
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop2;
               }
               continue loop1;
            }
         }
      }
      
      public function §&H§() : §9=§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§0i§);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr56:
                     this.§0i§ = new §9=§(this.§ u§,this.§&i§,this.§3l§ + "/fb/friends",true);
                  }
               }
               return this.§0i§;
            }
         }
         §§goto(addr56);
      }
      
      public function §5!J§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§0i§ = new §9=§(this.§ u§,this.§&i§,this.§3l§ + "/fb/friends",true,param1);
         }
      }
      
      public function §8!6§(param1:String, param2:String, param3:Boolean = false) : §9=§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            if(this.§`h§[param2])
            {
               if(!(_loc5_ && param2))
               {
                  return this.§`h§[param2];
               }
            }
         }
         return this.§`h§[param2] = new §9=§(this.§ u§,this.§&i§,this.§3l§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3.toString(),false);
      }
      
      public function §0L§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(_loc6_)
            {
               if(!this.§`h§[_loc2_])
               {
                  continue;
               }
               if(!(_loc6_ || param1))
               {
                  continue;
               }
            }
            this.§`h§[_loc2_] = null;
         }
      }
      
      public function §0!§(param1:String) : §9=§
      {
         return this.§`h§[param1];
      }
      
      public function get §5O§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§0i§);
            if(_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§push(-1);
                     if(_loc2_ || this)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr51:
                     return this.§0i§.§5O§;
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr51);
      }
   }
}
