package §<w§
{
   public class §[!N§
   {
       
      
      protected var §0"1§:§8p§;
      
      protected var §else §:Object;
      
      protected var §@"R§:String;
      
      protected var §'F§:String;
      
      protected var §[!D§:String;
      
      public function §[!N§(param1:String, param2:String, param3:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§else § = {};
            loop0:
            while(true)
            {
               super();
               do
               {
                  this.§[!D§ = param3;
                  do
                  {
                     this.§'F§ = param2;
                     continue loop0;
                  }
                  while(_loc5_);
                  
               }
               while(!(_loc4_ || param3));
               
            }
         }
      }
      
      public function §^"D§() : §8p§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§0"1§);
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr56:
                     this.§0"1§ = new §8p§(this.§'F§,this.§[!D§,this.§@"R§ + "/fb/friends",true);
                  }
               }
               return this.§0"1§;
            }
         }
         §§goto(addr56);
      }
      
      public function injectData(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§0"1§ = new §8p§(this.§'F§,this.§[!D§,this.§@"R§ + "/fb/friends",true,param1);
         }
      }
      
      public function §;8§(param1:String, param2:String, param3:Boolean = false) : §8p§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            if(this.§else §[param2])
            {
               if(_loc5_)
               {
                  §§goto(addr40);
               }
            }
            return this.§else §[param2] = new §8p§(this.§'F§,this.§[!D§,this.§@"R§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3.toString(),false);
         }
         addr40:
         return this.§else §[param2];
      }
      
      public function §4!f§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!(_loc6_ && _loc2_))
            {
               if(!this.§else §[_loc2_])
               {
                  continue;
               }
               if(_loc6_)
               {
                  continue;
               }
            }
            this.§else §[_loc2_] = null;
         }
      }
      
      public function §2Y§(param1:String) : §8p§
      {
         return this.§else §[param1];
      }
      
      public function §3";§(param1:String, param2:String) : Number
      {
         var _loc3_:§8p§ = this.§else §[param1] as §8p§;
         return _loc3_.§`N§(param2);
      }
      
      public function get §&"U§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§0"1§);
            if(_loc2_ || this)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     §§push(-1);
                     if(_loc2_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr51:
                     return this.§0"1§.§&"U§;
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr51);
      }
      
      public function getTotalStars() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§0"1§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     addr57:
                     §§push(0);
                     if(_loc2_ || _loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr66:
                     return this.§0"1§.§^!H§(this.§'F§);
                  }
                  return §§pop();
               }
            }
            §§goto(addr66);
         }
         §§goto(addr57);
      }
   }
}
