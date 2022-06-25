package §+k§
{
   public class §^x§
   {
       
      
      protected var §#L§:§>t§;
      
      protected var §0!!§:Object;
      
      protected var §0'§:String;
      
      protected var §7D§:String;
      
      protected var §]!6§:String;
      
      public function §^x§(param1:String, param2:String, param3:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            this.§0!!§ = {};
            while(true)
            {
               super();
               while(!(_loc5_ && param3))
               {
                  this.§]!6§ = param3;
                  loop2:
                  while(!_loc5_)
                  {
                     while(true)
                     {
                        this.§7D§ = param2;
                        do
                        {
                           this.§0'§ = param1;
                        }
                        while(!(_loc4_ || param2));
                        
                        if(!(_loc5_ && param3))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §^"§() : §>t§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§#L§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     this.§#L§ = new §>t§(this.§7D§,this.§]!6§,this.§0'§ + "/fb/friends",true);
                     addr49:
                     §§push(this.§#L§);
                  }
               }
               §§goto(addr49);
            }
            return §§pop();
         }
         §§goto(addr49);
      }
      
      public function §&?§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#L§ = new §>t§(this.§7D§,this.§]!6§,this.§0'§ + "/fb/friends",true,param1);
         }
      }
      
      public function §"I§(param1:String, param2:String, param3:Boolean = false) : §>t§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(this.§0!!§[param2])
            {
               if(_loc5_ || param2)
               {
                  return this.§0!!§[param2];
               }
            }
         }
         return this.§0!!§[param2] = new §>t§(this.§7D§,this.§]!6§,this.§0'§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3.toString(),false);
      }
      
      public function §@!@§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!(_loc6_ && _loc2_))
            {
               if(this.§0!!§[_loc2_])
               {
                  if(!_loc6_)
                  {
                     this.§0!!§[_loc2_] = null;
                  }
               }
            }
         }
      }
      
      public function §9!v§(param1:String) : §>t§
      {
         return this.§0!!§[param1];
      }
      
      public function get §&1§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§#L§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc2_)
                  {
                     §§push(-1);
                     if(!(_loc1_ && _loc1_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr51:
                     return this.§#L§.§&1§;
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr51);
      }
   }
}
