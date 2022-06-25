package §_-0EZ§
{
   public class §_-7n§
   {
       
      
      protected var §_-TI§:§_-48§;
      
      protected var §_-n8§:Object;
      
      protected var §_-pl§:String;
      
      protected var §_-ck§:String;
      
      protected var §_-TT§:String;
      
      public function §_-7n§(param1:String, param2:String, param3:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§_-n8§ = {};
            while(true)
            {
               super();
               while(_loc4_ || this)
               {
                  this.§_-TT§ = param3;
                  while(!(_loc5_ && this))
                  {
                     this.§_-ck§ = param2;
                     do
                     {
                        this.§_-pl§ = param1;
                     }
                     while(!(_loc4_ || this));
                     
                     if(!(_loc4_ || param2))
                     {
                        continue;
                     }
                     return;
                     addr56:
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      public function §_-0-1§() : §_-48§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§_-TI§);
            if(_loc1_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr55:
                     this.§_-TI§ = new §_-48§(this.§_-ck§,this.§_-TT§,this.§_-pl§ + "/fb/friends",true);
                  }
               }
               return this.§_-TI§;
            }
         }
         §§goto(addr55);
      }
      
      public function §_-067§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§_-TI§ = new §_-48§(this.§_-ck§,this.§_-TT§,this.§_-pl§ + "/fb/friends",true,param1);
         }
      }
      
      public function §_-0z§(param1:String, param2:String, param3:Boolean = false) : §_-48§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            if(this.§_-n8§[param2])
            {
               if(!(_loc6_ && param1))
               {
                  return this.§_-n8§[param2];
               }
            }
         }
         return this.§_-n8§[param2] = new §_-48§(this.§_-ck§,this.§_-TT§,this.§_-pl§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3.toString(),false);
      }
      
      public function §_-Ty§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!_loc5_)
            {
               if(this.§_-n8§[_loc2_])
               {
                  if(_loc6_)
                  {
                     this.§_-n8§[_loc2_] = null;
                  }
               }
            }
         }
      }
      
      public function §_-Dp§(param1:String) : §_-48§
      {
         return this.§_-n8§[param1];
      }
      
      public function get §_-wX§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§_-TI§);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     §§push(-1);
                     if(_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr30:
                     return this.§_-TI§.§_-wX§;
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr30);
      }
   }
}
