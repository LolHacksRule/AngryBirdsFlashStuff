package §5!G§
{
   public class §4!$§
   {
       
      
      public var mName:String;
      
      public var §-n§:Number;
      
      public var §!;§:Number;
      
      public var §1!#§:Number;
      
      public var §`!;§:Number;
      
      public var §6-§:Number;
      
      public var §"M§:Boolean;
      
      public var §7x§:Number;
      
      public var §6!L§:Number;
      
      public var §3!6§:Number;
      
      public var §6!0§:Boolean;
      
      public var §[[§:Boolean;
      
      public var §<!@§:Boolean;
      
      public var §5b§:Array;
      
      public var § ,§:Boolean;
      
      public var §[!O§:String;
      
      public var §#!3§:String;
      
      public function §4!$§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false)
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         super();
         loop0:
         while(true)
         {
            this.mName = param1;
            loop1:
            while(true)
            {
               this.§-n§ = param4;
               while(true)
               {
                  this.§!;§ = param5;
                  while(true)
                  {
                     this.§1!#§ = param3;
                     loop4:
                     while(true)
                     {
                        §§push(this);
                        §§push(param2);
                        if(!_loc19_)
                        {
                           §§push(§§pop() / 1000);
                        }
                        §§pop().§`!;§ = §§pop();
                        this.§6!0§ = param6;
                        this.§<!@§ = param7;
                        if(_loc19_ && this)
                        {
                           break;
                        }
                        §§push(this);
                        if(!_loc19_)
                        {
                           §§push(param8);
                           if(_loc18_)
                           {
                              if(§§pop() != 0)
                              {
                                 addr116:
                                 §§push(param8);
                                 if(_loc18_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc18_ || this)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(Number(1));
                              }
                           }
                           §§pop().§6-§ = §§pop();
                           while(true)
                           {
                              this.§"M§ = param9;
                              continue loop0;
                              addr55:
                              this.§[!O§ = param15;
                              if(_loc18_)
                              {
                                 this.§#!3§ = param16;
                                 this.§[[§ = param17;
                                 addr41:
                                 if(_loc18_)
                                 {
                                    if(_loc18_)
                                    {
                                       return;
                                    }
                                    continue loop0;
                                 }
                                 addr46:
                                 while(!_loc19_)
                                 {
                                    continue loop1;
                                    §§goto(addr41);
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        §§goto(addr116);
                     }
                  }
                  addr101:
                  this.§6!L§ = param11;
                  do
                  {
                     this.§3!6§ = param12;
                     this.§5b§ = param13;
                  }
                  while(!_loc18_);
                  
                  if(_loc19_ && this)
                  {
                     continue;
                  }
                  this.§ ,§ = param14;
                  §§goto(addr46);
               }
            }
         }
      }
      
      public function §4C§() : String
      {
         return this.mName;
      }
      
      public function §;%§() : Number
      {
         return this.§-n§;
      }
      
      public function §&2§() : Number
      {
         return this.§!;§;
      }
      
      public function §4!8§() : Number
      {
         return this.§`!;§;
      }
      
      public function §2U§() : Boolean
      {
         return this.§6!0§;
      }
   }
}
