package §&E§
{
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §<T§.§^!Y§;
   import §<T§.§`m§;
   
   public class §'`§ extends §]6§
   {
       
      
      private var §4a§:§6!K§;
      
      public var mAnimationRatio:Number = 0;
      
      public function §'`§(param1:§^!Y§, param2:§`m§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         var _loc20_:Boolean = true;
         var _loc21_:Boolean = false;
         if(!_loc21_)
         {
            this.§0"Y§();
         }
         §§push(Math.random() * 7);
         if(_loc20_)
         {
            §§push(§§pop() + 1);
         }
         var _loc18_:int = §§pop();
         §§push("WINGMAN_EFFECT_");
         if(_loc20_ || param2)
         {
            §§push(§§pop() + _loc18_);
         }
         var _loc19_:String = §§pop();
         if(_loc20_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,_loc19_);
         }
         do
         {
            this.§<!-§();
         }
         while(_loc21_);
         
      }
      
      private function §<!-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§4a§);
            while(!§§pop())
            {
               if(!(_loc1_ && _loc1_))
               {
                  this.§4a§ = §0W§.§&"5§.§]">§(§0W§.§&"5§.§]!r§(this.§>R§,{
                     "scaleX":1,
                     "scaleY":1
                  },{
                     "scaleX":0,
                     "scaleY":0
                  },0.25,§0W§.§]!t§),§0W§.§&"5§.§]!r§(this.§>R§,{"rotation":0},{"rotation":180 * Math.PI / 180},0.25,§0W§.§[!Z§));
               }
               addr39:
               if(!(_loc2_ || this))
               {
                  continue;
               }
               §§pop().play();
               if(!(_loc1_ && this))
               {
                  addr54:
                  if(_loc1_)
                  {
                     while(true)
                     {
                        §§push(this.§4a§);
                        while(true)
                        {
                           §§pop().onComplete = this.§0"Y§;
                           addr73:
                           while(true)
                           {
                              §§push(this.§4a§);
                              if(!(_loc2_ || _loc2_))
                              {
                                 break;
                              }
                              §§goto(addr39);
                           }
                        }
                        §§goto(addr54);
                     }
                     addr136:
                  }
                  break;
               }
               §§goto(addr73);
            }
            return;
         }
         §§goto(addr136);
      }
      
      private function §0"Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.mAnimationRatio = 0;
            loop0:
            while(true)
            {
               §§push(this.§4a§);
               if(!_loc1_)
               {
                  if(!§§pop())
                  {
                     do
                     {
                        this.§4a§ = null;
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                     }
                     while(_loc1_);
                     
                     return;
                     addr57:
                  }
                  while(true)
                  {
                     §§push(this.§4a§);
                  }
               }
               while(true)
               {
                  §§pop().stop();
                  continue loop0;
               }
            }
         }
         §§goto(addr57);
      }
   }
}
